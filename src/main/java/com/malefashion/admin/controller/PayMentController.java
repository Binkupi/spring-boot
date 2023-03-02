package com.malefashion.admin.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.security.Principal;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailParseException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;

import com.malefashion.admin.dao.AdminDAO;
import com.malefashion.admin.dao.BillDAO;
import com.malefashion.admin.dao.BillDetailDAO;
import com.malefashion.admin.dao.ClientDAO;
import com.malefashion.admin.dao.WatchDAO;
import com.malefashion.admin.entity.AdminModel;
import com.malefashion.admin.entity.ClientModel;
import com.malefashion.admin.entity.WatchModel;
import com.malefashion.admin.entity.products;
import com.malefashion.admin.helper.Helper;
import com.malefashion.admin.service.interfaceservice.IPaymentService;

@Transactional
//Cần thiết để sử dụng RedirectAttributesy
@Controller
@ControllerAdvice
//Cần thiết để sử dụng RedirectAttributes
public class PayMentController {

	@Autowired
	private AdminDAO AdminDao;

	@Autowired
	private IPaymentService paymentService;

	// hiển thị trang thanh toán
	@RequestMapping(value = { "/thanhtoan" }, method = RequestMethod.GET)
	public String welcomePage(Model model, @RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "query", required = false) String query,
			@RequestParam(value = "success", required = false) String success, Principal principal) {
		Helper.getAuthentication(model, AdminDao, principal);
		if (query != null) {
			model.addAttribute("client", new ClientModel());
			model.addAttribute("query", query);
			model.addAttribute("success", "");
			return "payment";
		}
		if (error != null) {
			if (error.equals("errMail")) {
				model.addAttribute("error", 1);
			}
		}
		if (success != null) {
			model.addAttribute("client", new ClientModel());
			model.addAttribute("query", "");
			model.addAttribute("success", "success");
			return "payment";
		}
		model.addAttribute("thanhtoan", new AdminModel());
		model.addAttribute("client", new ClientModel());
		model.addAttribute("query", "");
		String empty = "Empty";
		model.addAttribute("success", empty);
		return "payment";
	}

	// xử lý dữ liệu khi người dùng gửi dữ liệu thanh toán trong form
	@RequestMapping(value = { "/thanhtoan" }, method = RequestMethod.POST)
	public String AddBillSuccess(Model model, @ModelAttribute("client") @Validated ClientModel client,
			BindingResult result, Principal principal) {
		if (result.hasErrors()) {
			return null;
		}
		Helper.getAuthentication(model, AdminDao, principal);
		paymentService.AddBillSuccess(client);

		model.addAttribute("products", new products());
		Boolean success = true;
		model.addAttribute("success", success);
		return "redirect:/thanhtoan";
	}

}