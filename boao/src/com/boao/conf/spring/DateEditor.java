package com.boao.conf.spring;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import com.boao.util.StringUtils;

public class DateEditor extends PropertyEditorSupport {

	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		if (StringUtils.isBlank(text))
			setValue(null);
		else {
			SimpleDateFormat sdf = null;
			if (text.length() < 12)
				sdf = new SimpleDateFormat("yyyy-MM-dd");
			else {
				sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			}
			try {
				setValue(sdf.parse(text));
			}
			catch (ParseException e) {
				setValue(null);
			}
		}
	}
}
