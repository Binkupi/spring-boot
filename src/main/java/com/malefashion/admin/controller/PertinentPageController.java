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
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.malefashion.admin.dao.AdminDAO;
import com.malefashion.admin.entity.AdminModel;
import com.malefashion.admin.helper.Helper;

@Transactional
//Cần thiết để sử dụng RedirectAttributesy
@Controller
@ControllerAdvice
//Cần thiết để sử dụng RedirectAttributes
public class PertinentPageController {
	
	@Autowired
	 private AdminDAO AdminDao;
	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String contactPage(Model model,Principal principal) {
		Helper.getAuthentication(model,AdminDao,principal);
		return "contact";
	}
	
	@RequestMapping(value = { "/contactinfo" }, method = RequestMethod.GET)
	public String contactInfoPage(Model model,Principal principal) {
		Helper.getAuthentication(model,AdminDao,principal);
		return "contactinfo";
	}
}
