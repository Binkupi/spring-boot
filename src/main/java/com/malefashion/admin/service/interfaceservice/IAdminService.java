package com.malefashion.admin.service.interfaceservice;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.malefashion.admin.entity.AdminModel;
import com.malefashion.admin.entity.LoaiModel;
import com.malefashion.admin.entity.PasswordModel;

public interface IAdminService {
	public void productWatchPage(Model model, Principal principal) throws Exception;

	public void productDetailWatch(Model model, @PathVariable("id") int id, Principal principal) throws Exception;

	public void previewDonghoNam(Model model, Principal principal) throws Exception;

	public void previewDonghoNu(Model model, Principal principal) throws Exception;

	public String login(Model model, @RequestParam(value = "error", required = false) String errol,
			Principal principal) throws Exception;

	public String logout(HttpSession session, HttpServletRequest request, Principal principal) throws Exception;

	public void register(Model model, Principal principal,
			@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "success", required = false) String success) throws Exception;

	public void activeAdmine(Model model, @PathVariable("email") String email, Principal principal) throws Exception;

	public String registerPost(HttpServletRequest request, Model model,
			@ModelAttribute("register") @Validated AdminModel register, BindingResult result, Principal principal) throws Exception;

	public void infoUser(Model model, Principal principal) throws Exception;

	public void changePassword(Model model, @RequestParam(value = "error", required = false) String error,
			Principal principal) throws Exception;

	public String changePasswordSucessfully(Model model, @ModelAttribute("password") @Validated PasswordModel password,
			BindingResult result, Principal principal) throws Exception;

	public void categoryManage(Model model, Principal principal) throws Exception;

	public void addLoai(Model model, Principal principal) throws Exception;

	public String addLoaiSuccess(Model model, @ModelAttribute("loai") @Validated LoaiModel loai, BindingResult result,
			Principal principal) throws Exception;

	public String removeLoai(Model model, @ModelAttribute("loai") @Validated LoaiModel loai, BindingResult result,
			Principal principal) throws Exception;

	public void fogotPassword(Model model, @RequestParam(value = "errEmail", required = false) String errorEmail,
			@RequestParam(value = "success", required = false) String success, Principal principal) throws Exception;
	public String fogotPasswordSuccess(Model model, @ModelAttribute("emailAdmin") @Validated AdminModel emailUser,
			Principal principal) throws Exception;
	public void sentEmail(String to, String subject, String name) throws Exception;
	public void sentEmailTogetPassWord(String to, String subject, String name, String password) throws Exception;
}
