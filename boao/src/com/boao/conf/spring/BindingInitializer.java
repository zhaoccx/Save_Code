package com.boao.conf.spring;

import java.util.Date;

import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.support.WebBindingInitializer;
import org.springframework.web.context.request.WebRequest;

public class BindingInitializer implements WebBindingInitializer {

	public void initBinder(WebDataBinder binder, WebRequest request) {
		binder.registerCustomEditor(int.class, new NumberEditor(Integer.class));
		binder.registerCustomEditor(long.class, new NumberEditor(Long.class));
		binder.registerCustomEditor(Date.class, new DateEditor());
	}
}
