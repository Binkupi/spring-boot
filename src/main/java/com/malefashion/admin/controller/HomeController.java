package com.malefashion.admin.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.malefashion.admin.service.HomeService;

@Transactional
@ControllerAdvice
@Controller
// Cần thiết để sử dụng RedirectAttributes
public class HomeController {
    @Autowired
    private HomeService homeService;

    // hiển thị trang chủ
    @RequestMapping(value = { "/" }, method = RequestMethod.GET)
    public String welcomePage(Model model, Principal principal) {
        // Sau khi user login thanh cong se co principal
        String text = "";
        try {

            boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
                    .getPrincipal() instanceof UserDetails;
            homeService.findUserInfo(isAuthorize, model, principal);
            text = homeService.showList(model);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return text;
    }

    // hiển thị dữ liệu tìm kiếm trong trang tìm kiếm
    @RequestMapping(value = { "/timkiem" }, method = RequestMethod.GET)
    public String Search(Model model, @RequestParam(value = "keyword", required = false) String keyword,
            Principal principal) {
        String text = "";
        try {
            boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
                    .getPrincipal() instanceof UserDetails;
            homeService.findUserInfo(isAuthorize, model, principal);
            text = homeService.search(model, keyword);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return text;
    }

}
