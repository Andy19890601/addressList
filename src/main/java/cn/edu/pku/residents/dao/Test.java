public class BFOReportBaseGenerator {

    // WB-1045: report parameters
    private static final Log s_log = Log.getLog(BFOReportBaseGenerator.class);

    protected final String m_templateURL;
    protected final String m_reportURL;
    protected final LoginCredentials m_credentials;
    protected final Map<String, String> m_neededRequestHeaders = new HashMap<String, String>();
    protected final ReportParameters m_reportParameters;
    protected final DataSetKey m_dataSetKey;

    protected final ProposalReportType m_reportType;
    protected final int m_proposalId;
    protected final LanguageId m_reportLanguageId;

    // Fake report for debugging
    protected static final String FAKE_REPORT_TEMPLATE = "<?xml version=\"1.0\" encoding=\"UTF-8\" ?><pdf><head><macrolist><macro id='DocumentWatermark'><div align='center' valign='middle' rotate='-45' font-size='72pt'><span>DRAFT</span></div></macro></macrolist>  <link name='arial' type='font' subtype='truetype' src='fonts/arial.ttf' /></head><body background-macro='DocumentWatermark' size='letter' header-height='0' footer-height='0'><p align='center' top='20'>This is a fake one-page PDF report.</p><p/>";

    public BFOReportBaseGenerator(String p_templateURL,
                                  String p_reportURL,
                                  ReportParameters p_reportParameters,
                                  LoginCredentials p_credentials,
                                  DataSetKey p_dataSetKey,
                                  ProposalReportType p_reportType,
                                  int p_proposalId,
                                  LanguageId p_reportLanguageId,
                                  CommandRequest p_cmdreq) {

        m_templateURL = p_templateURL;
        m_reportURL = p_reportURL;
        m_reportParameters = p_reportParameters;
        m_credentials = p_credentials;
        m_dataSetKey = p_dataSetKey;
        m_reportType = p_reportType;
        m_proposalId = p_proposalId;
        m_reportLanguageId = p_reportLanguageId;

        /* now process cmdreq to extract the needed request header names. */
        extractNeededRequestHeaders(p_cmdreq);
    }

    protected byte[] getPDFReport() {
        StopWatch sw = new StopWatch();
        sw.start();
        byte[] pdf = null;

        if (ProposalReportType.RTF.equals(m_reportType)) {
            throw new RuntimeException("RTF report type not supported in the non-WR generator.");
        } else {
            String template = getReportTemplate(m_templateURL, m_reportParameters).trim();
            sw.split();
            s_log.info("Generated XHTML template in " + sw.toSplitString());

            ReportAttachmentManager attachmentManager = getReportAttachmentManager(template);
//            ByteArrayOutputStream zipOutputStream = attachmentManager != null
//                    ? attachmentManager.createZipFile(m_credentials, m_dataSetKey)
//                    : null;
//            sw.split();
//            s_log.info("Attachment time: " + sw.toSplitString());

            s_log.info("PDF Report Template about to be sent to BFO for draft ");
            if (s_log.isDebug()) {
                s_log.debug("PDF Report Template " + " (about to be sent to BFO for draft) follows:"
                            + "\n======== TEMPLATE BEGIN: " + "\n" + template + "\n======== TEMPLATE END: "
                            + "\n");
            }
            pdf = generatePDF(template, m_reportURL, attachmentManager);
            sw.split();
            s_log.info("Acquired draft PDF from BFO server in " + sw.toSplitString());

        }
        sw.stop();
        s_log.info("RunReport complete. Total time: " + sw.toString());

        return pdf;
    }


    /**
     * @param p_request Added charset=UTF-8 to the Content-Type header.
     */
    protected void extractNeededRequestHeaders(CommandRequest p_request) {
        Map<String, String> hMap = m_neededRequestHeaders;
        List<Object> hNames = Collections.list(p_request.getContextAttrNames());
        Iterator<Object> it = hNames.iterator();
        String hName = null;
        while (it.hasNext()) {
            hName = (String) it.next();
            if (hName != null && !hName.equalsIgnoreCase("Accept-Encoding") && !hName.equalsIgnoreCase("QUERY_STRING")
                && !hName.equalsIgnoreCase("SESSIONID") && !hName.equalsIgnoreCase("Content-Length")) {
                String hValue = p_request.getContextAttr(hName);
                if (hName.equalsIgnoreCase("Content-Type")) {
                    if (hValue.toLowerCase().indexOf("charset=utf-8") == -1) {
                        hValue += "; charset=UTF-8";
                    }
                }
                hMap.put(hName, hValue);
            }
        }
    }

    protected void addNeededRequestHeaders(PostMethod p_postMethod) {
        Map<String, String> hMap = m_neededRequestHeaders;
        Iterator<String> i = hMap.keySet().iterator();
        while (i.hasNext()) {
            String hName = i.next();
            String hValue = hMap.get(hName);
            p_postMethod.addRequestHeader(hName, hValue);
        }
    }

    protected byte[] generatePDF(String p_template, String p_reportURL, ReportAttachmentManager p_attachmentManager) {

        String xmlError = XmlUtilities.validateXMLString(p_template);

        if (xmlError != null) {
            s_log.error("Invalid BFO template: " + xmlError);
            s_log.debug(p_template);
            throw new RuntimeException("Invalid BFO template");
        }
        // extract attachmentReferences from template string.
        Pattern p = Pattern.compile("<attachmentReferences(?:\\s*/>|.*?</attachmentReferences>)", Pattern.DOTALL);
        Matcher m = p.matcher(p_template);
        if (m.find()) {
            p_template = p_template.substring(0, m.start()) + p_template.substring(m.end(), p_template.length());
        }

        BFOReportRequest req = new BFOReportRequest(p_template);
        p_attachmentManager.addFilesToRequest(req, m_credentials, m_dataSetKey);
        BFOReportClient client = new BFOReportClient(req);

        BFOReportResponse resp = client.processPDFPage();

        if (resp.hasError()) {
            throw new RuntimeException("Error returned from BFO server:\n" + new String(resp.getDraftPDFBytes()));
        }

        return resp.getDraftPDFBytes();
    }

    protected ReportAttachmentManager getReportAttachmentManager(String p_template) {
        Pattern p = Pattern.compile("<attachmentReferences(?:\\s*/>|.*?</attachmentReferences>)", Pattern.DOTALL);
        Matcher m = p.matcher(p_template);
        if (m.find()) {
            return ReportAttachmentManager.fromXMLRepresentation(m.group());
        }
        return null;
    }

    protected String getReportTemplate(String p_templateURL, ReportParameters p_reportParameters) {
        if (p_templateURL == null) {
            throw new IllegalArgumentException("String pTemplateURL argument must not be null");
        }
        String template = null;

        if (p_reportParameters.getParameterAsBoolean(ProposalCommandConstants.PARAM_DO_FAKE_ONE_PAGE_PDF)) {
            s_log.error("Doing fakeOnePagePdf instead of real report");
            template = FAKE_REPORT_TEMPLATE;
            template = template + "</body></pdf>";
            return template;
        }
        PostMethod templatePost = new PostMethod(p_templateURL);

        templatePost.addParameter("proposalID", String.valueOf(m_proposalId));

        p_reportParameters.copyParametersToTemplatePost(templatePost);

        addNeededRequestHeaders(templatePost);

        BFOReportRequest req = new BFOReportRequest(template);
        BFOReportClient client = new BFOReportClient(req);

        String resp = client.generatePDFTemplate(templatePost);

        if (resp == null) {
                throw new RuntimeException("Error returned from BFO server for reportTemplateRequest request to URL "
                                           + p_templateURL);
        }

        return resp;
    }

    protected static String getFinalTemplateFromDraft(String p_draft) {
        Pattern p = Pattern.compile("(<macro\\s+id=[\'\"]DocumentWatermark[\'\"]\\s*>).*?(</macro>)", Pattern.DOTALL);
        Matcher m = p.matcher(p_draft);
        if (!m.find()) {
            throw new RuntimeException("Draft BFO template does not match regex: " + p.pattern());
        }
        return p_draft.substring(0, m.end(1)) + "<div/>" + p_draft.substring(m.start(2), p_draft.length());
    }

}


public class BFOReportClient {

    private static final Log log = Log.getLog(BFOReportClient.class);
    static String XHTML_FILE = "pdf.xml";
    private final BFOReportRequest m_bfoReportRequest;

    public BFOReportClient(BFOReportRequest p_bfoReportRequest) {
        m_bfoReportRequest = p_bfoReportRequest;
    }

    public BFOReportResponse processPDF(ProposalReport p_report, LanguageId p_reportLanguageId, LoginCredentials p_credentials) {
        try {
            byte[] draftPDF = null;
            byte[] finalPDF = null;
            long t = System.currentTimeMillis();
            if(m_bfoReportRequest.useDraftMacro()) {
                t = System.currentTimeMillis();
                draftPDF = ReportWatermarker.apply(generatePdf(m_bfoReportRequest.draftTemplateXML()));
                p_report.setReportProgress(p_credentials, 97, "Acquired draft PDF from BFO server", (System.currentTimeMillis() - t));
                
                t = System.currentTimeMillis();
                finalPDF = ReportWatermarker.apply(generatePdf(m_bfoReportRequest.finalTemplateXML()));
                p_report.setReportProgress(p_credentials, 99, "Acquired final PDF from BFO server", (System.currentTimeMillis() - t));
            } else {
                t = System.currentTimeMillis();
                finalPDF = generatePdf(m_bfoReportRequest.finalTemplateXML());
                p_report.setReportProgress(p_credentials, 97, "Acquired draft PDF from BFO server", (System.currentTimeMillis() - t));//report as draft as we will post mark final with draft watermark
                try {
                    t = System.currentTimeMillis();
                    draftPDF = ReportWatermarker.applyDraftWatermark(finalPDF, Localizer.getLocalizer(Site.currentSite(), p_reportLanguageId).getLocalizedTextIfPossible("DRAFT", ContentType.REPORT));
                    p_report.setReportProgress(p_credentials, 99, "Acquired final PDF from BFO server", (System.currentTimeMillis() - t));
                } catch (IOException e) {
                    throw new RuntimeException("Draft watermark could not be applied" + e);
                }
            }
            return new BFOReportResponse(draftPDF, finalPDF);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        finally{
            m_bfoReportRequest.cleanup();
        }
    }
    
    public BFOReportResponse processPDFPage() {
        try {
            byte[] bytes = generatePdf(m_bfoReportRequest.draftTemplateXML());
            return new BFOReportResponse(bytes, bytes);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        finally{
            m_bfoReportRequest.cleanup();
        }
    }

    private byte[] generatePdf(String p_template) throws Exception {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        InputStream in = null;
        try{
            in = new ByteArrayInputStream(p_template.getBytes("UTF-8")); 
            String pwd = m_bfoReportRequest.getTempDir().toURI().toURL().toExternalForm();
            ReportParser parser = ReportParser.getInstance();
            ReportParser.setLicenseKey(PDFReportManager.getBFO_LicenseKey());
            parser.setErrorHandler(new BFOServletErrorHandler());
            InputSource source = null;
            
            source = new InputSource(in);
            source.setSystemId(pwd);
            
            PDF pdf = parser.parse(source);
            
            // Write the completed PDF to memory
            pdf.render(baos);
            baos.close();
            pdf.close();
            return baos.toByteArray();
        }finally{
            StreamUtilities.safeClose(in);
            StreamUtilities.safeClose(baos);
        }
    }

    public String generatePDFTemplate(PostMethod method) {
        submitSimpleHTTPRequest((PostMethod) method, "template");
        try {
            return new String(method.getResponseBody(), "UTF-8");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        finally {
            m_bfoReportRequest.cleanup();
        }
    }

    private void submitSimpleHTTPRequest(PostMethod pMeth, String debugRequestRole) {
        /* safeguard/workaround: set content-length explicitly. */
        String encoded = EncodingUtil.formUrlEncode(pMeth.getParameters(), pMeth.getRequestCharSet());
        pMeth.setRequestContentLength(encoded.length());
        submitHTTPRequest(pMeth, debugRequestRole);
    }

    private void submitHTTPRequest(ExpectContinueMethod pMeth, String debugRequestRole) {
        HttpClient client = new HttpClient();

        String destURL = pMeth.getHostConfiguration().getHostURL() + pMeth.getPath();
        try {
            log.info(debugRequestRole + " request to " + destURL + " commencing...");
            long t = System.currentTimeMillis();
            client.executeMethod(pMeth);
            log.info(debugRequestRole + " request to " + destURL + " complete, response received in "
                     + (System.currentTimeMillis() - t) / 1000.0 + " s");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        int sCode = pMeth.getStatusCode();
        log.info(debugRequestRole + " HTTP request returned " + sCode + " status");
        if (sCode != 200) {
            log.error(debugRequestRole + " HTTP response had non-200 status " + sCode);
            try {
                log.error(debugRequestRole + " HTTP response body was: " + pMeth.getResponseBodyAsString());
            } catch (IOException e) {
                log.error(debugRequestRole + " HTTP response body was: " + "can't get response body");
            }
            // Don't throw, so that the error html is returned as the response body
        }
    }
}

public class BFOReportRequest {
    private static final Log log = Log.getLog(BFOReportRequest.class);
    private String _templateXML;
    private final File tempDir;
    private final boolean _useDraftMacro;
    
    public File getTempDir() {
        return tempDir;
    }

    protected static final String DEFAULT_TEMPLATE_CHARSET = "UTF-8";
    
    /**
     * Construct a BFOReportRequest.
     * 
     * @param templateXML - a string containing the template xml
     */
    protected BFOReportRequest(String templateXML) {
        _templateXML = templateXML;
        _useDraftMacro = ReportWatermarker.useDraftMacro();
        try {
            tempDir = makeTmpDir();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    
    protected boolean useDraftMacro(){
        return _useDraftMacro;
    }
    
    protected void cleanup(){
        deleteDir(tempDir);
    }

    private File makeTmpDir() throws Exception {
        File rootDir = new File(ProposalReportStorage.getInstance().getWorkDirectory());
        File tmpFilePlaceholder = File.createTempFile("bfozip", null, rootDir);
        // delete placeholder file, then create a directory at same pathname
        tmpFilePlaceholder.delete();
        File tmpDirFile = new File(tmpFilePlaceholder.getAbsolutePath());
        if (!tmpDirFile.mkdirs()) {
            throw new RuntimeException("Failed to create temp directory: " + tmpDirFile.getAbsolutePath());
        }
        return tmpDirFile;
    }

    private void deleteDir(File tmpDir) {
        try {
            FileUtils.deleteDirectory(tmpDir);
            log.debug("Deleted directory " + tmpDir.getPath());
        } catch (IOException e) {
            log.warn("Could not delete directory " + tmpDir.getPath() + (tmpDir.canWrite() ? " (but directory is writable)" : ""));
        }
    }

    /**
     * Attach a file to the request.
     * 
     * @param relativePath should be the same as the relative path reference in the template xml.
     * @param file the file to be attached
     */
    public void attachFile(String relativePath, File file)
        throws FileNotFoundException {
            createTempSubDirectories(tempDir, relativePath);
            File dest = new File(tempDir.getAbsolutePath() + File.separatorChar + relativePath);
            
            FileInputStream fis = new FileInputStream(file);
            FileOutputStream fos = new FileOutputStream(dest);
            FileChannel in = fis.getChannel();
            FileChannel out = fos.getChannel();
            
            try {
                in.transferTo(0, in.size(), out);
                out.close();
                in.close();
                fis.close();
                fos.close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
            
    }

    /**
     * Attach a bytearray representing the contents of a file to the request.
     * 
     * @param relativePath should be the same as the relative path reference in the template xml.
     * @param fileContents the bytearray representing the file's contents
     */
    public void attachFile(String relativePath, byte[] fileContents) {
        createTempSubDirectories(tempDir, relativePath);
        File out = new File(tempDir.getAbsolutePath() + File.separatorChar + relativePath);
        try {
            FileUtils.writeByteArrayToFile(out, fileContents);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void createTempSubDirectories(File baseDir, String zipEntryName) {
        verifyRelativePath(zipEntryName);
        File nFile = new File(baseDir, zipEntryName);
        File newDir = nFile.getParentFile();
        if (!newDir.exists()) {
            log.debug("Making subdir " + newDir.getAbsolutePath());
            newDir.mkdirs();
        }
    }

    String draftTemplateXML() {
        return _templateXML;
    }
    
    String finalTemplateXML() {
        return draftTemplateToFinal(_templateXML);
    }

    private void verifyRelativePath(String relativePath) {
        if ((new File(relativePath)).isAbsolute()) {
            throw new RuntimeException(
                "BFOReportRequest: "
                    + relativePath
                    + " must be a relative path.");
        }
    }
    
    private static String draftTemplateToFinal(String p_draft) {
        Pattern p = Pattern.compile("(<macro\\s+id=[\'\"]DocumentWatermark[\'\"]\\s*>).*?(</macro>)", Pattern.DOTALL);
        Matcher m = p.matcher(p_draft);
        if (!m.find()) {
            throw new RuntimeException("Draft BFO template does not match regex: " + p.pattern());
        }
        return p_draft.substring(0, m.end(1)) + "<div/>" + p_draft.substring(m.start(2), p_draft.length());
    }
}

public class BFOReportResponse {
    
    private final byte[] _draft; 
    private final byte[] _final; 
    /**
     * Construct a response given a completed post.
     * 
     * @param postedReportPost A post which has already been posted.  Typically
     * either a PostMethod or a MultipartPostMethod.
     */
    protected BFOReportResponse(byte[] p_draft, byte[] p_final) {
        _draft = p_draft;
        _final =p_final;
    }

    public byte[] getDraftPDFBytes() {
        return _draft;
    }

    public byte[] getFinalPDFBytes() {
        return _final;
    }

    public boolean hasError() {
        return _draft == null || _final == null;
    }

    public String getError() {
        return new String(_draft == null? _final:_draft);
    }

}

