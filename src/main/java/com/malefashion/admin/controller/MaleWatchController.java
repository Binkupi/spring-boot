package com.malefashion.admin.controller;

import java.security.Principal;
import java.util.List;

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
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.malefashion.admin.dao.AdminDAO;
import com.malefashion.admin.dao.WatchDAO;
import com.malefashion.admin.entity.AdminModel;
import com.malefashion.admin.entity.WatchModel;
import com.malefashion.admin.entity.products;
import com.malefashion.admin.helper.Helper;

import com.malefashion.admin.service.MaleWatchService;

@Transactional
@Controller
@ControllerAdvice
public class MaleWatchController {
	@Autowired
	private AdminDAO AdminDao;
	@Autowired
	private WatchDAO WatchDAO;
	@Autowired
	private MaleWatchService maleWatchService;

	// hiển thị trang đồng hồ nam
	@RequestMapping(value = { "/donghonam" }, method = RequestMethod.GET)
	public String MaleWatchPage(Model model, @RequestParam(value = "sort", required = false) String sort,
			@RequestParam(value = "price", required = false) String price, Principal principal) {
		Helper.getAuthentication(model, AdminDao, principal);
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
			}
		}
		List<WatchModel> menList = WatchDAO.listAllMenWatch();
		model.addAttribute("menWatchs", menList);
		return "donghonam";
	}

	// hiển thị dữ liệu tìm kiếm trang đồng hồ nam
	@RequestMapping(value = { "/donghonam/search" }, method = RequestMethod.GET)
	public String Search(Model model, @RequestParam(value = "keyword", required = false) String keyword,
			Principal principal) {
		String text = "";
		try {
			boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
					.getPrincipal() instanceof UserDetails;
			maleWatchService.findUserInfo(isAuthorize, model, principal);
			text = maleWatchService.searchWatch(model, keyword);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return text;
	}

	// bộ lọc
	@RequestMapping(value = { "/donghonam/filter/{type}" }, method = RequestMethod.GET)
	public String FilterLeather(Model model, @PathVariable("type") String type,
			@RequestParam(value = "value", required = false) String value, Principal principal) {
		String text = "";
		try {
			boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
					.getPrincipal() instanceof UserDetails;
			maleWatchService.findUserInfo(isAuthorize, model, principal);
			text = maleWatchService.filter(model, value, type);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return text;
	}
}
