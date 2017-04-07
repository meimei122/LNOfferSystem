package org.yangpeng.util;

import org.apache.log4j.Logger;

import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.HanyuPinyinVCharType;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;

public class PinYinUtil {
	private final Logger logger = Logger.getLogger(PinYinUtil.class);
	/**
	 * 将传入的String字符转换成拼音
	 * @param tableName
	 * @return
	 * @throws BadHanyuPinyinOutputFormatCombination
	 */
	@SuppressWarnings("deprecation")
	public  String getEname(String UserName) throws BadHanyuPinyinOutputFormatCombination{
		logger.debug("获取将要转换的名字："+UserName);
		HanyuPinyinOutputFormat pyFormat = new HanyuPinyinOutputFormat();
		pyFormat.setCaseType(HanyuPinyinCaseType.LOWERCASE);    //设置样式
        pyFormat.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
        pyFormat.setVCharType(HanyuPinyinVCharType.WITH_V);
        logger.debug("转换后的名字:" +PinyinHelper.toHanyuPinyinString(UserName, pyFormat, ""));
        return PinyinHelper.toHanyuPinyinString(UserName, pyFormat, "");
	}
}
