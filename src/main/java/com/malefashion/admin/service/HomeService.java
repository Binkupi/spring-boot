package com.malefashion.admin.service;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailParseException;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import com.malefashion.admin.entity.AdminModel;
import com.malefashion.admin.dao.AdminDAO;

import com.malefashion.admin.dao.WatchDAO;
import com.malefashion.admin.entity.WatchModel;
import com.malefashion.admin.entity.products;
import com.malefashion.admin.helper.Helper;
import com.malefashion.admin.service.interfaceservice.IHomeService;

@Service
public class HomeService implements IHomeService {
    @Autowired
    private WatchDAO WatchDAO;
    @Autowired
    private AdminDAO AdminDao;

    public void findUserInfo(boolean isAuthorize, Model model, Principal principal) {
        try {
        	Helper.getAuthentication(model,AdminDao,principal);
        } catch (Exception e) {
            throw new MailParseException(e);
        }

    }

    public String showList(Model model) {
        try {
            List<WatchModel> womenList = WatchDAO.listWomenWatch();
            model.addAttribute("womenWatchs", womenList);
            model.addAttribute("womenWatch", new WatchModel());
            List<WatchModel> menList = WatchDAO.listMenWatch();
            model.addAttribute("menWatchs", menList);
            model.addAttribute("watch", new WatchModel());
            model.addAttribute("products", new products());
            return "index";
        } catch (Exception e) {
            throw new MailParseException(e);
        }
    }

    public String search(Model model, String keyword) {
        try {
            if (keyword == null) {
                keyword = "";
            }
            List<WatchModel> womenList = WatchDAO.searchWatch(keyword);
            model.addAttribute("watchs", womenList);
            model.addAttribute("products", new products());
            return "timkiem";
        } catch (Exception e) {
            throw new MailParseException(e);
        }
    }
}
