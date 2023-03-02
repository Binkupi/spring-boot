package com.malefashion.admin.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.malefashion.admin.service.FemaleWatchService;

@Transactional
@Controller
@ControllerAdvice
public class FemaleWatchController {
    @Autowired
    private FemaleWatchService femaleWatchService;

    // hiển thị trang đồng hồ nữ
    @RequestMapping(value = { "/donghonu" }, method = RequestMethod.GET)
    public String womenWatch(Model model, @RequestParam(value = "sort", required = false) String sort,
            @RequestParam(value = "price", required = false) String price, Principal principal) {
        String text = "";
        try {
            boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
                    .getPrincipal() instanceof UserDetails;
            femaleWatchService.findUserInfo(isAuthorize, model, principal);
            text = femaleWatchService.sortAndSortByPriceWatch(model, sort, price);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return text;
    }

    // tìm kiếm
    @RequestMapping(value = { "/donghonu/search" }, method = RequestMethod.GET)
    public String Search(Model model, @RequestParam(value = "keyword", required = false) String keyword,
            Principal principal) {
        String text = "";
        try {
            boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
                    .getPrincipal() instanceof UserDetails;
            femaleWatchService.findUserInfo(isAuthorize, model, principal);
            text = femaleWatchService.searchWatch(model, keyword);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return text;
    }

    // bộ lọc
    @RequestMapping(value = { "/donghonu/filter/{type}" }, method = RequestMethod.GET)
    public String FilterLeather(Model model, @PathVariable("type") String type,
            @RequestParam(value = "value", required = false) String value, Principal principal) {
        String text = "";
        try {
            boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
                    .getPrincipal() instanceof UserDetails;
            femaleWatchService.findUserInfo(isAuthorize, model, principal);
            text = femaleWatchService.filter(model, value, type);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return text;
    }
}
