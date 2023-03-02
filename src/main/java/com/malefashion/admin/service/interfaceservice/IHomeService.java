package com.malefashion.admin.service.interfaceservice;

import java.security.Principal;

import org.springframework.ui.Model;

public interface IHomeService {
    public void findUserInfo(boolean isAuthorize, Model model, Principal principal) throws Exception;

    public String showList(Model model) throws Exception;

    public String search(Model model, String keyword) throws Exception;
}
