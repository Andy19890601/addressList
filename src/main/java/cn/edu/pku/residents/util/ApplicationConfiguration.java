/* @(#) ApplicationConfiguration.java
 * Project:	carlicense
 * Package: cn.videoworks.carlicense.util
 * Author:	LuoChuan
 * Date:	Apr 12, 2013
 * Copyright © 2010-2013 by Beijing VideoWorks Technology Co., Ltd. All rights reserved.
 */
package cn.edu.pku.residents.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * @author rainisic
 *
 */
public class ApplicationConfiguration {

	/** Properties. */
	private static Properties properties = new Properties();

	/**
	 * Load application configuration.
	 * 
	 * @param stream
	 */
	public static void load(InputStream inStream) {

		try {
			properties.load(inStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * Get property value by given key.
	 * 
	 * @param key
	 *            property key.
	 * @return property value.
	 */
	public static String getProperty(String key) {
		return properties.getProperty(key);
	}

	/**
	 * Get all properties.
	 * 
	 * @return all properties.
	 */
	public static Properties getProperties() {
		return properties;
	}
}
