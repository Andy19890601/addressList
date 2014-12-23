
    /**
     * Convert to thumbnail list.
     * @param PDFBytes
     * @return
     * @throws IOException
     */
    public List<Thumbnail> convert(byte[] PDFBytes) throws IOException{
        if(PDFBytes == null)
            return new ArrayList<Thumbnail>(0);
        List<Thumbnail> result = new ArrayList<Thumbnail>();
        ReportParser.setLicenseKey(PDFReportManager.getBFOViewer_LicenseKey());
        PDF pdf = new PDF(new PDFReader(new ByteArrayInputStream(PDFBytes)));
        Set<String> nameSet = new HashSet<String>();
        PDFParser parser = new PDFParser(pdf);
        ColorModel cm = PDFParser.RGB;
        int dpi = 120;
        int pageIndex = 0;
        for (int i = 0; i < pdf.getNumberOfPages(); i++) {
            String pageID = "page" + i + ".png";
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            try {
                PDFPage page = pdf.getPage(i);
                List<PDFAnnotation> annots = page.getAnnotations();
                for (PDFAnnotation annotation : annots) {
                    if (annotation instanceof AnnotationLink) {
                        pageID = ((AnnotationLink) annotation).getAction().getType().split(":")[1];
                    }
                }
            } catch (Exception e) {
                throw new RuntimeException("PDF convert to thumbnail error");
            }
            PagePainter painter = parser.getPagePainter(i);
            BufferedImage image = painter.getImage(dpi, cm);
            ImageIO.write(image, "PNG", baos);
            if(pageID.contains("_0")){
                pageID = pageID.replace("_0", "");
            }
            if(nameSet.contains(pageID)){
                pageIndex++;
            }else{
                pageIndex = 1;
                nameSet.add(pageID);
            }
            Thumbnail thumbnail = new Thumbnail(pageID, reportDefinitionID, 
                                                baos.toByteArray(), pageIndex, m_thumbnailRequest.getLogCredentials().loginUserId());
            result.add(thumbnail);
            baos.close();
        }
        LogMessage logMsg = new LogMessage("Convert PDF to thumbnail complete");
        m_log.info(logMsg);
        return result;
    }
