package com.malefashion.admin.service;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.NoHandlerFoundException;
import com.malefashion.admin.service.interfaceservice.IErrorService;

@Service
public class ErrorService implements IErrorService {

    @Override
    public String handle(NoHandlerFoundException ex) throws Exception {
        System.out.println("123");
        return "redirect:/404";
    }

    @Override
    public String notFoudPage() throws Exception {
        return "404";
    }

}
