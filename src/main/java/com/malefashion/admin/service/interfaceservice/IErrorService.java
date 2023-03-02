package com.malefashion.admin.service.interfaceservice;

import org.springframework.web.servlet.NoHandlerFoundException;

public interface IErrorService {
    public String handle(NoHandlerFoundException ex) throws Exception;

    public String notFoudPage() throws Exception;
}
