package com.malefashion.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;

import com.malefashion.admin.service.interfaceservice.IErrorService;

@Transactional
@Controller
@ControllerAdvice
public class ErrorController {
    @Autowired
    private IErrorService errorService;

    @ExceptionHandler(NoHandlerFoundException.class)
    @ResponseStatus(value = HttpStatus.NOT_FOUND)
    public String handle(NoHandlerFoundException ex) throws Exception {
        return errorService.handle(ex);
    }

    @RequestMapping(value = { "/404" }, method = RequestMethod.GET)
    public String NotFoudPage() throws Exception {
        return errorService.notFoudPage();
    }
}
