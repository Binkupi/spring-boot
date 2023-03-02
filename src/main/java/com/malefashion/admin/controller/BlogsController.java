package com.malefashion.admin.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.malefashion.admin.dao.AdminDAO;
import com.malefashion.admin.dao.WatchDAO;
import com.malefashion.admin.entity.AdminModel;
import com.malefashion.admin.entity.BillDetailModel;
import com.malefashion.admin.entity.WatchModel;
import com.malefashion.admin.entity.products;
import com.malefashion.admin.service.interfaceservice.IBlogsService;

@SuppressWarnings("unused")
@Transactional
@Controller
@ControllerAdvice
public class BlogsController {
	@Autowired
	IBlogsService  blogsService;
	
	@RequestMapping(value = { "/blog" }, method = RequestMethod.GET)
 	public String blogPage(Model model,Principal principal) {
		try {
			blogsService.blogPage(model, principal);
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return "blog";
	}
	
	@RequestMapping(value = { "/blog/7-luu-y-quan-trong-khi-chon-mua-dong-ho" }, method = RequestMethod.GET)
	public String blog1Page(Model model,Principal principal) {
		try {
			blogsService.blog1Page(model, principal);
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return "blog";
	}

	@RequestMapping(value = { "/blog/huong-dan-cach-kiem-tra-dong-ho" }, method = RequestMethod.GET)
	public String blog2Page(Model model,Principal principal) {
		try {
			blogsService.blog2Page(model, principal);
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return "blog";
	}
	
	@RequestMapping(value = { "/blog/kien-thuc-can-thiet-de-bao-quan-dong-ho-deo-tay-tot-nhat" }, method = RequestMethod.GET)
	public String blog3Page(Model model,Principal principal) {
		try {
			blogsService.blog3Page(model, principal);
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return "blog";
	}

	@RequestMapping(value = { "/blog/phan-biet-dong-ho-automatic-theo-chuyen-gia" }, method = RequestMethod.GET)
	public String blog4Page(Model model,Principal principal) {
		try {
			blogsService.blog4Page(model, principal);
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return "blog";
	}
	
	@RequestMapping(value = { "/blog/thay-pin-dong-ho-deo-tay-o-dau" }, method = RequestMethod.GET)
	public String blog5Page(Model model,Principal principal) {
		try {
			blogsService.blog5Page(model, principal);
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return "blog";
	}
	
	@RequestMapping(value = { "/blog/top-10-cua-hang-ban-dong-ho-chinh-hang-uy-tin-nhat-tphcm" }, method = RequestMethod.GET)
	public String blog7Page(Model model,Principal principal) {
		try {
			blogsService.blog7Page(model, principal);
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return "blog";
	}
	
	@RequestMapping(value = { "/blog/top-15-thuong-hieu-dong-ho" }, method = RequestMethod.GET)
	public String blog8Page(Model model,Principal principal) {
		try {
			blogsService.blog8Page(model, principal);
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return "blog";
	}
	
	@RequestMapping(value = { "/blog/top-dong-ho-nam-nu-ban-chay-nhat-gia-chua-den-5-trieu-dong" }, method = RequestMethod.GET)
	public String blog9Page(Model model,Principal principal) {
		try {
			blogsService.blog9Page(model, principal);
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return "blog";
	}
}

