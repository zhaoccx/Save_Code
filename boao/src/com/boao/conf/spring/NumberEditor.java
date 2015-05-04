package com.boao.conf.spring;

import java.beans.PropertyEditorSupport;

import org.springframework.util.NumberUtils;

import com.boao.util.StringUtils;

public class NumberEditor extends PropertyEditorSupport {

	@SuppressWarnings("rawtypes")
	private final Class numberClass;

	@SuppressWarnings("rawtypes")
	public NumberEditor(Class numberClass) {
		this.numberClass = numberClass;
	}

	@SuppressWarnings("unchecked")
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		if (StringUtils.isBlank(text))
			setValue(0);
		else
			setValue(NumberUtils.parseNumber(text, this.numberClass));
	}
}
