package com.malefashion.admin.controller;

import java.security.Principal;

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
import org.springframework.web.bind.annotation.RequestParam;

import com.malefashion.admin.dao.AdminDAO;
import com.malefashion.admin.entity.AdminModel;

import com.malefashion.admin.entity.LoaiModel;
import com.malefashion.admin.entity.PasswordModel;
import com.malefashion.admin.helper.Helper;
import com.malefashion.admin.service.interfaceservice.IAdminService;

@Transactional
@Controller
@ControllerAdvice
public class AdminController {
	@Autowired
	IAdminService adminService;
	@Autowired
	private AdminDAO AdminDao;
	// xử lý trang quản lý sản phẩm
	@RequestMapping(value = { "/admin/watchs" }, method = RequestMethod.GET)
	public String productWatchPage(Model model, Principal principal) {
		try {
			adminService.productWatchPage(model, principal);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "admin/pages/CRUDpage/listProduct";

	}

	// xử lý trang update product detaile
	@RequestMapping(value = { "/admin/list-product/{id}" }, method = RequestMethod.GET)
	public String productDetailWatch(Model model, @PathVariable("id") int id, Principal principal) {
		try {
			adminService.productDetailWatch(model, id, principal);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "admin/pages/CRUDpage/productDetail";
	}

	// xử lý trang xem trước đồng hồ nam
	@RequestMapping(value = { "/admin/preview/donghonam" }, method = RequestMethod.GET)
	public String previewDonghoNam(Model model, Principal principal) {
		try {
			adminService.previewDonghoNam(model, principal);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "donghonam";
	}
	
	@RequestMapping(value = { "/admin/forgot-password" }, method = RequestMethod.GET)
    public String fogotPassword(Model model,@RequestParam(value = "errEmail", required = false) String errorEmail,@RequestParam(value = "success", required = false) String success,Principal principal) {  
		Helper.getAuthentication(model, AdminDao, principal);
		if(errorEmail!=null) {
			if(errorEmail.equals("true")) {
				
				model.addAttribute("errorEmail", true);
			}
		}
		if(success!=null) {
			if(success.equals("true")) {
				
				model.addAttribute("success", true);
			}
		}
		
        model.addAttribute("emailAdmin", new AdminModel());
        return "quenmatkhau";
    }

	// xử lý trang xem trước đồng hồ nữ
	@RequestMapping(value = { "/admin/preview/donghonu" }, method = RequestMethod.GET)
	public String previewDonghoNu(Model model, Principal principal) {
		try {
			adminService.previewDonghoNu(model, principal);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "donghonu";
	}

	// tạo form login
	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public void login(Model model, @RequestParam(value = "error", required = false) String errol, Principal principal) {
		try {
			adminService.login(model, errol, principal);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	// xử lý khi người dùng đăng nhập thành công
	@RequestMapping(value = { "/logoutSuccessful" }, method = RequestMethod.GET)
	public String logout(HttpSession session, HttpServletRequest request, Principal principal) {
		return "redirect:/";
	}

	// tạo form đăng kí admin mới
	@RequestMapping(value = { "/admin/register" }, method = RequestMethod.GET)
	public String register(Model model, Principal principal,
			@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "success", required = false) String success) {
		try {
			adminService.register(model, principal, error, success);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "register";
	}

	// active account
	@RequestMapping(value = { "/admin/{email}/active" }, method = RequestMethod.GET)
	public String activeAdmine(Model model, @PathVariable("email") String email, Principal principal) {
		try {
			adminService.activeAdmine(model, email, principal);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "redirect:/admin/info-admin";
	}

	// xử lý khi người dùng đăng kí account mới
	@RequestMapping(value = { "/admin/register" }, method = RequestMethod.POST)
	public String registerPost(HttpServletRequest request, Model model,
			@ModelAttribute("register") @Validated AdminModel register, BindingResult result, Principal principal) {
		try {
			return adminService.registerPost(request, model, register, result, principal);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "redirect:/admin/register";
	}

	// hiển thị thông tin user
	@RequestMapping(value = { "/admin/info-admin" }, method = RequestMethod.GET)
	public String infoUser(Model model, Principal principal) {
		try {
			adminService.infoUser(model, principal);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "admin/pages/adminPage/infoAdmin";
	}

	// thay đổi pasword
	@RequestMapping(value = { "/admin/change-password" }, method = RequestMethod.GET)
	public String changePassword(Model model, @RequestParam(value = "error", required = false) String error,
			Principal principal) {
		try {
			adminService.changePassword(model, error, principal);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "admin/pages/adminPage/changePassword";
	}

	// xử lý dữ liệu khi người dùng đổi mật khẩu
	@RequestMapping(value = { "/admin/change-password" }, method = RequestMethod.POST)
	public String changePasswordSucessfully(Model model, @ModelAttribute("password") @Validated PasswordModel password,
			BindingResult result, Principal principal) {
		try {
			return adminService.changePasswordSucessfully(model, password, result, principal);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "redirect:/admin/info-admin";
	}

	// hiển thị trang quản lý sản phẩm
	@RequestMapping(value = { "/admin/category-manage" }, method = RequestMethod.GET)
	public String categoryManage(Model model, Principal principal) {
		try {
			adminService.categoryManage(model, principal);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "admin/pages/categoryManagePage/categoryManage";
	}

	// hiển thị trang tạo loại sản phẩm
	@RequestMapping(value = { "/admin/loai/create" }, method = RequestMethod.GET)
	public String addLoai(Model model, Principal principal) {
		try {
			adminService.addLoai(model, principal);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "admin/pages/CRUDpage/createLoai";
	}

	// xử lý dữ liệu khi tạo sản phẩm
	@RequestMapping(value = { "/admin/loai/create" }, method = RequestMethod.POST)
	public String addLoaiSuccess(Model model, @ModelAttribute("loai") @Validated LoaiModel loai, BindingResult result,
			Principal principal) {
		try {
			adminService.addLoaiSuccess(model, loai, result, principal);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "redirect:/admin/category-manage";
	}

	// xử lý dữ liệu khi xóa sản phẩm
	@RequestMapping(value = { "/admin/loai/delete" }, method = RequestMethod.POST)
	public String removeLoai(Model model, @ModelAttribute("loai") @Validated LoaiModel loai, BindingResult result,
			Principal principal) {
		try {
			return adminService.removeLoai(model, loai, result, principal);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "redirect:/admin/category-manage";
	}


	// xử lý dữ liệu khi quên mật khẩu
	@RequestMapping(value = { "/admin/forgot-password" }, method = RequestMethod.POST)
	public String fogotPasswordSuccess(Model model, @ModelAttribute("emailAdmin") @Validated AdminModel emailUser,
			Principal principal) {
		try {
			return adminService.fogotPasswordSuccess(model, emailUser, principal);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			}
		return "redirect:/admin/forgot-password";
	}
	public void sentEmail(String to, String subject, String name) throws Exception {
		adminService.sentEmail(to, subject, name);
			}

	// gửi email để lấy password mới khi quên mật khẩu
	public void sentEmailTogetPassWord(String to, String subject, String name, String password) throws Exception {
		adminService.sentEmailTogetPassWord(to, subject, name, password);
	}

}