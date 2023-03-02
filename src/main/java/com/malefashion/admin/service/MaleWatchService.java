package com.malefashion.admin.service;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailParseException;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.malefashion.admin.dao.AdminDAO;
import com.malefashion.admin.dao.WatchDAO;
import com.malefashion.admin.entity.AdminModel;
import com.malefashion.admin.entity.WatchModel;
import com.malefashion.admin.entity.products;
import com.malefashion.admin.helper.Helper;
import com.malefashion.admin.service.interfaceservice.IMaleWatchService;

@Service
public class MaleWatchService implements IMaleWatchService {
    @Autowired
    private AdminDAO AdminDao;
    @Autowired
    private WatchDAO WatchDAO;

    public void findUserInfo(boolean isAuthorize, Model model, Principal principal) {
        try {
        	Helper.getAuthentication(model,AdminDao,principal);
        } catch (Exception e) {
            throw new MailParseException(e);
        }
    }

    public String sortAndSortByPriceWatch(Model model, String sort, String price) {
        try {
            if (sort != null) {
                if (sort.equals("asc") || sort.equals("desc")) {
                    List<WatchModel> menList = WatchDAO.sortWatch(sort, 1);
                    model.addAttribute("menWatchs", menList);
                    return "donghonam";
                }
            }
            if (price != null) {
                if (price.equals("highprice") || price.equals("lowprice")) {
                    List<WatchModel> menList = WatchDAO.sortByPriceWatch(price, 1);
                    model.addAttribute("menWatchs", menList);
                    return "donghonam";
                }
            }
            List<WatchModel> menList = WatchDAO.listAllMenWatch();
            model.addAttribute("menWatchs", menList);
            return "donghonam";
        } catch (Exception e) {
            throw new MailParseException(e);
        }
    }

    public String searchWatch(Model model, String keyword) {
        try {
            if (keyword == null) {
                keyword = "";
            }
            List<WatchModel> menList = WatchDAO.searchWatch(keyword);
            model.addAttribute("menWatchs", menList);
            model.addAttribute("products", new products());
            return "donghonam";
        } catch (Exception e) {
            throw new MailParseException(e);
        }
    }

    public String filter(Model model, String value, String type) {
        try {
            if (type.equals("chain")) {
                if (value != null) {
                    List<WatchModel> List = WatchDAO.filterChainWatch(value, 1);
                    model.addAttribute("menWatchs", List);
                    return "donghonam";
                }
            }
            if (type.equals("size")) {
                if (value != null) {
                    List<WatchModel> List = WatchDAO.filterSizeWatch(value, 1);
                    model.addAttribute("menWatchs", List);
                    return "donghonam";
                }
            }
            if (type.equals("color")) {
                if (value != null) {
                    List<WatchModel> List = WatchDAO.filterColorWatch(value, 1);
                    model.addAttribute("menWatchs", List);
                    return "donghonam";
                }
            }
            return "donghonam";
        } catch (Exception e) {
            throw new MailParseException(e);
        }

    }
}
