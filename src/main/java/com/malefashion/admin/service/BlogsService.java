package com.malefashion.admin.service;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.malefashion.admin.dao.AdminDAO;
import com.malefashion.admin.entity.AdminModel;
import com.malefashion.admin.helper.Helper;
import com.malefashion.admin.service.interfaceservice.IBlogsService;

@Service
public class BlogsService implements IBlogsService {
	@Autowired
	private AdminDAO AdminDao;
	
	@Override
 	public void blogPage(Model model,Principal principal) throws Exception {
		Helper.getAuthentication(model,AdminDao,principal);
	}
	
	@Override
	public void blog1Page(Model model,Principal principal) throws Exception {
		Helper.getAuthentication(model,AdminDao,principal);
	}

	@Override
	public void blog2Page(Model model,Principal principal) throws Exception {
		Helper.getAuthentication(model,AdminDao,principal);
	}
	
	@Override
	public void blog3Page(Model model,Principal principal) throws Exception {
		Helper.getAuthentication(model,AdminDao,principal);
	}

	@Override
	public void blog4Page(Model model,Principal principal) throws Exception {
		Helper.getAuthentication(model,AdminDao,principal);
	}
	
	@Override
	public void blog5Page(Model model,Principal principal) throws Exception {
		Helper.getAuthentication(model,AdminDao,principal);
	}
	
	@Override
	public void blog7Page(Model model,Principal principal) throws Exception {
		Helper.getAuthentication(model,AdminDao,principal);
	}
	
	@Override
	public void blog8Page(Model model,Principal principal) throws Exception {
		Helper.getAuthentication(model,AdminDao,principal);
	}
	
	@Override
	public void blog9Page(Model model,Principal principal) throws Exception {
		Helper.getAuthentication(model,AdminDao,principal);
	}
}
