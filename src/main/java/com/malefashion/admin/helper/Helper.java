package com.malefashion.admin.helper;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.ui.Model;

import com.malefashion.admin.dao.AdminDAO;
import com.malefashion.admin.dao.WatchDAO;
import com.malefashion.admin.entity.AdminModel;

public class Helper {
	public static void getAuthentication(Model model,AdminDAO AdminDao,Principal principal) {
		
		boolean isAuthorize= SecurityContextHolder.getContext().getAuthentication().getPrincipal() instanceof UserDetails;
		if(isAuthorize) {
			String email = principal.getName();
			AdminModel admin = AdminDao.findUserInfo(email);
			model.addAttribute("admin", admin);
		}
	}

}
