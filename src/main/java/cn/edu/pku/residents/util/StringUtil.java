package cn.edu.pku.residents.util;

/**
 * 字符串工具类
 * @author stanley_hwang
 *
 */
public class StringUtil {
	
	/**
	 * 检查字符串是否为null、空白字符或空字符
	 * 
	 * @param src
	 *            输入字符串
	 * @return 是否为null、空白字符或空字符
	 */
	public static boolean checkNull(String src) {
		return src != null && src.trim().length() > 0;
	}
	
}
