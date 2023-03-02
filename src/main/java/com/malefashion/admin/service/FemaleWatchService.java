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
import com.malefashion.admin.service.interfaceservice.IFemaleWatchService;

@Service
public class FemaleWatchService implements IFemaleWatchService {
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

    public String sortAndSortByPriceWatch(Model model, String sort, String price) {
        try {
            if (sort != null) {
                if (sort.equals("asc") || sort.equals("desc")) {
                    List<WatchModel> womenList = WatchDAO.sortWatch(sort, 0);
                    model.addAttribute("womenWatchs", womenList);
                    return "donghonu";
                }

            }
            if (price != null) {
                if (price.equals("highprice") || price.equals("lowprice")) {
                    List<WatchModel> womenList = WatchDAO.sortByPriceWatch(price, 0);
                    model.addAttribute("womenWatchs", womenList);
                    return "donghonu";
                }

            }
            List<WatchModel> womenList = WatchDAO.listAllWomenWatch();
            model.addAttribute("womenWatchs", womenList);
            return "donghonu";
        } catch (Exception e) {
            throw new MailParseException(e);
        }
    }

    public String searchWatch(Model model, String keyword) {
        try {
            if (keyword == null) {
                keyword = "";
            }
            List<WatchModel> womenList = WatchDAO.searchWatch(keyword);
            model.addAttribute("womenWatchs", womenList);
            model.addAttribute("products", new products());
            return "donghonu";
        } catch (Exception e) {
            throw new MailParseException(e);
        }
    }

    public String filter(Model model, String value, String type) {
        try {
            if (type.equals("chain")) {
                if (value != null) {
                    List<WatchModel> List = WatchDAO.filterChainWatch(value, 0);
                    model.addAttribute("womenWatchs", List);
                    return "donghonu";
                }
            }
            if (type.equals("size")) {
                if (value != null) {
                    List<WatchModel> List = WatchDAO.filterChainWatch(value, 0);
                    model.addAttribute("womenWatchs", List);
                    return "donghonu";
                }
            }
            if (type.equals("color")) {
                if (value != null) {
                    List<WatchModel> List = WatchDAO.filterChainWatch(value, 0);
                    model.addAttribute("womenWatchs", List);
                    return "donghonu";
                }
            }
            return "donghonu";
        } catch (Exception e) {
            throw new MailParseException(e);
        }
    }
}
