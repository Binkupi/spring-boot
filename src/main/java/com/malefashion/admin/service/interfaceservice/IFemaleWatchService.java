package com.malefashion.admin.service.interfaceservice;

import java.security.Principal;

import org.springframework.ui.Model;

public interface IFemaleWatchService {
    public void findUserInfo(boolean isAuthorize, Model model, Principal principal) throws Exception;

    public String sortAndSortByPriceWatch(Model model, String sort, String price) throws Exception;

    public String searchWatch(Model model, String keyword) throws Exception;

    public String filter(Model model, String value, String type) throws Exception;
}
