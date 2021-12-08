package kosta.mvc.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ExceptionHandlerAdvice {
	@ExceptionHandler(Exception.class)
	public ModelAndView error(Exception ex) {
		return new ModelAndView("error/error", "errMessage" ,ex.getMessage());
	}
}
