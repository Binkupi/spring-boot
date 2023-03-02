package com.malefashion.admin.service;

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
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.malefashion.admin.dao.AdminDAO;
import com.malefashion.admin.dao.LoaiDAO;
import com.malefashion.admin.dao.WatchDAO;
import com.malefashion.admin.entity.AdminModel;
import com.malefashion.admin.entity.LoaiModel;
import com.malefashion.admin.entity.PasswordModel;
import com.malefashion.admin.entity.WatchModel;
import com.malefashion.admin.entity.products;
import com.malefashion.admin.service.interfaceservice.IAdminService;

@Service
public class AdminService implements IAdminService {
	@Autowired
	private LoaiDAO LoaiDAO;
	@Autowired
	private WatchDAO WatchDAO;
	@Autowired
	public JavaMailSender emailSender;

	// xử lý trang quản lý sản phẩm
	@Override
	public void productWatchPage(Model model, Principal principal) throws Exception {
		// Sau khi user login thanh cong se co principal
		boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal() instanceof UserDetails;
		if (isAuthorize) {
			String email = principal.getName();
			AdminModel admin = AdminDao.findUserInfo(email);
			model.addAttribute("admin", admin);
		}
		List<WatchModel> productList = WatchDAO.listAllProductWatch();
		model.addAttribute("productWatchs", productList);
		model.addAttribute("watch", new WatchModel());
	}

	// xử lý trang update product detaile
	@Override
	public void productDetailWatch(Model model, @PathVariable("id") int id, Principal principal) throws Exception {
		boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal() instanceof UserDetails;
		if (isAuthorize) {
			String email = principal.getName();
			AdminModel admin = AdminDao.findUserInfo(email);
			model.addAttribute("admin", admin);
		}
		List<WatchModel> productDetail = WatchDAO.productDetailWatch(id);
		model.addAttribute("productDetails", productDetail);
		model.addAttribute("productDetail", new WatchModel());
	}

	// xử lý trang xem trước đồng hồ nam
	@Override
	public void previewDonghoNam(Model model, Principal principal) throws Exception {
		boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal() instanceof UserDetails;
		if (isAuthorize) {
			String email = principal.getName();
			AdminModel admin = AdminDao.findUserInfo(email);
			model.addAttribute("admin", admin);
		}
		List<WatchModel> menList = WatchDAO.listMenWatchPreview();
		model.addAttribute("menWatchs", menList);
		model.addAttribute("products", new products());
	}

	// xử lý trang xem trước đồng hồ nữ
	@Override
	public void previewDonghoNu(Model model, Principal principal) throws Exception {
		boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal() instanceof UserDetails;
		if (isAuthorize) {
			String email = principal.getName();
			AdminModel admin = AdminDao.findUserInfo(email);
			model.addAttribute("admin", admin);
		}
		List<WatchModel> womenList = WatchDAO.listWomenWatchPreview();
		model.addAttribute("womenWatchs", womenList);
		model.addAttribute("products", new products());
	}

	// Đăng nhập đăng xuất
	@Autowired
	private AdminDAO AdminDao;

	// tạo form login
	@Override
	public String login(Model model, @RequestParam(value = "error", required = false) String errol, Principal principal)
			throws Exception {

		if (errol != null) {
			model.addAttribute("error", true);
			boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
					.getPrincipal() instanceof UserDetails;
			if (isAuthorize) {
				String email = principal.getName();
				AdminModel admin = AdminDao.findUserInfo(email);
				model.addAttribute("admin", admin);
			}
			return "login";
		}
		boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal() instanceof UserDetails;
		if (isAuthorize) {
			String email = principal.getName();
			AdminModel admin = AdminDao.findUserInfo(email);
			model.addAttribute("admin", admin);
		}
		return "login";

	}

	// xử lý khi người dùng đăng nhập thành công
	@Override
	public String logout(HttpSession session, HttpServletRequest request, Principal principal) throws Exception {
		return "redirect:/";
	}

	// tạo form đăng kí admin mới
	@Override
	public void register(Model model, Principal principal,
			@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "success", required = false) String success) throws Exception {
		boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal() instanceof UserDetails;
		if (isAuthorize) {
			String email = principal.getName();
			AdminModel admin = AdminDao.findUserInfo(email);
			model.addAttribute("admin", admin);
			model.addAttribute("errorEmail", false);
		}
		if (error != null) {
			if (error.equals("errMail")) {

				model.addAttribute("error", 1);
			} else if (error.equals("errorLengthPassword")) {
				model.addAttribute("error", 2);
			} else if (error.equals("errorConfirmPassword")) {
				model.addAttribute("error", 3);
			}
		}
		if (success != null) {
			model.addAttribute("success", true);

		} else {
			model.addAttribute("success", false);
		}
		model.addAttribute("register", new AdminModel());
	}

	// active account
	@Override
	public void activeAdmine(Model model, @PathVariable("email") String email, Principal principal) throws Exception {

		boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal() instanceof UserDetails;
		if (isAuthorize) {
			String emailUser = principal.getName();
			AdminModel admin = AdminDao.findUserInfo(emailUser);
			model.addAttribute("admin", admin);
		}
		AdminDao.changeActiveAdmin(email);
	}

	@Autowired
	private PasswordEncoder passwordEncoder;

	// xử lý khi người dùng đăng kí account mới
	@Override
	public String registerPost(HttpServletRequest request, Model model,
			@ModelAttribute("register") @Validated AdminModel register, BindingResult result, Principal principal)
			throws Exception {
		if (result.hasErrors()) {
			System.out.println(result);
			return null;
		}
		boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal() instanceof UserDetails;
		if (isAuthorize) {
			String email = principal.getName();
			AdminModel admin = AdminDao.findUserInfo(email);
			model.addAttribute("admin", admin);
		}
		if (!register.getPassword().equals(register.getConfirmPassword())) {
			model.addAttribute("error", "errConfirmPassword");
			return "redirect:/admin/register";
		}
		String emailRegister = register.getEmail();
		if (AdminDao.findEmail(emailRegister) == 1) {
			model.addAttribute("error", "errMail");
			return "redirect:/admin/register";
		}
		if (register.getPassword().length() < 8) {
			model.addAttribute("error", "errorLengthPassword");
			return "redirect:/admin/register";
		}
		// mã hóa mật khẩu bằng bcrypt
		register.setPassword(passwordEncoder.encode(register.getPassword()));
		AdminDao.insertUser(register.getName(), register.getAddress(), register.getPhone(), register.getPassword(),
				register.getEmail());
		sentEmail(register.getEmail(), "Verify account",register.getName());
		model.addAttribute("success", true);
		return "redirect:/admin/register";
	}

	// hiển thị thông tin user
	@Override
	public void infoUser(Model model, Principal principal) throws Exception {
		boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal() instanceof UserDetails;
		if (isAuthorize) {
			String email = principal.getName();
			AdminModel admin = AdminDao.findUserInfo(email);
			model.addAttribute("admin", admin);
		}
		model.addAttribute("register", new AdminModel());
	}

	// thay đổi pasword
	@Override
	public void changePassword(Model model, @RequestParam(value = "error", required = false) String error,
			Principal principal) throws Exception {
		boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal() instanceof UserDetails;
		if (isAuthorize) {
			String email = principal.getName();
			AdminModel admin = AdminDao.findUserInfo(email);
			model.addAttribute("admin", admin);
		}
		if (error != null) {
			if (error.equals("errorConfirmPassword")) {

				model.addAttribute("error", 1);
			} else if (error.equals("errorPassword")) {
				model.addAttribute("error", 2);
			} else if (error.equals("errorLengthPassword")) {
				model.addAttribute("error", 3);
			}
		}
		model.addAttribute("password", new PasswordModel());
	}

	// xử lý dữ liệu khi người dùng đổi mật khẩu
	@Override
	public String changePasswordSucessfully(Model model, @ModelAttribute("password") @Validated PasswordModel password,
			BindingResult result, Principal principal) throws Exception {
		String email = principal.getName();
		AdminModel admin = AdminDao.findUserInfo(email);
		model.addAttribute("admin", admin);
		if (!password.getNewPassword().equals(password.getConfirmPassword())) {
			model.addAttribute("error", "errorConfirmPassword");
			return "redirect:/admin/change-password";
		}
		if (password.getNewPassword().length() < 8) {
			model.addAttribute("error", "errorLengthPassword");
			return "redirect:/admin/change-password";
		}
		if (!passwordEncoder.matches(password.getOldPassword(), admin.getPassword())) {
			model.addAttribute("error", "errorPassword");
			return "redirect:/admin/change-password";
		}
		String newPassword = passwordEncoder.encode(password.getNewPassword());
		AdminDao.changePassword(email, newPassword);
		return "redirect:/admin/info-admin";
	}

	// hiển thị trang quản lý sản phẩm
	@Override
	public void categoryManage(Model model, Principal principal) throws Exception {
		boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal() instanceof UserDetails;
		if (isAuthorize) {
			String email = principal.getName();
			AdminModel admin = AdminDao.findUserInfo(email);
			model.addAttribute("admin", admin);
		}
		int maleNumber = WatchDAO.getCountWatch(1);
		int femaleNumber = WatchDAO.getCountWatch(0);
		model.addAttribute("male", maleNumber);
		model.addAttribute("female", femaleNumber);
		model.addAttribute("loai", new LoaiModel());
		List<LoaiModel> list = LoaiDAO.listAllLoai();
		for (LoaiModel item : list) {
			item.setSoluong(WatchDAO.countLoai(item.getMaloai()));
		}
		model.addAttribute("loais", list);
	}

	// hiển thị trang tạo loại sản phẩm
	@Override
	public void addLoai(Model model, Principal principal) throws Exception {
		boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal() instanceof UserDetails;
		if (isAuthorize) {
			String email = principal.getName();
			AdminModel admin = AdminDao.findUserInfo(email);
			model.addAttribute("admin", admin);
		}
		model.addAttribute("loai", new LoaiModel());
	}

	// xử lý dữ liệu khi tạo sản phẩm
	@Override
	public String addLoaiSuccess(Model model, @ModelAttribute("loai") @Validated LoaiModel loai, BindingResult result,
			Principal principal) throws Exception {
		boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal() instanceof UserDetails;
		if (result.hasErrors()) {
			System.out.println(result);
			return null;
		}
		if (isAuthorize) {
			String email = principal.getName();
			AdminModel admin = AdminDao.findUserInfo(email);
			model.addAttribute("admin", admin);
		}

		LoaiDAO.insertLoai(loai.getTenloai());
		return "redirect:/admin/category-manage";
	}

	// xử lý dữ liệu khi xóa sản phẩm
	@Override
	public String removeLoai(Model model, @ModelAttribute("loai") @Validated LoaiModel loai, BindingResult result,
			Principal principal) throws Exception {
		if (result.hasErrors()) {
			// System.out.println(result);
			return null;
		}
		boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal() instanceof UserDetails;
		if (isAuthorize) {
			String email = principal.getName();
			AdminModel admin = AdminDao.findUserInfo(email);
			model.addAttribute("admin", admin);
		}
		LoaiDAO.deleteLoai(loai.getMaloai());
		return "redirect:/admin/category-manage";
	}

	// hiển thị trang quên mật khẩu
	@Override
	public void fogotPassword(Model model, @RequestParam(value = "errEmail", required = false) String errorEmail,
			@RequestParam(value = "success", required = false) String success, Principal principal) throws Exception {
		boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal() instanceof UserDetails;
		if (isAuthorize) {
			String email = principal.getName();
			AdminModel admin = AdminDao.findUserInfo(email);
			model.addAttribute("admin", admin);
		}
		if (errorEmail != null) {
			if (errorEmail.equals("true")) {

				model.addAttribute("errorEmail", true);
			}
		}
		if (success != null) {
			if (success.equals("true")) {

				model.addAttribute("success", true);
			}
		}

		model.addAttribute("emailAdmin", new AdminModel());
	}

	// xử lý dữ liệu khi quên mật khẩu
	@Override
	public String fogotPasswordSuccess(Model model, @ModelAttribute("emailAdmin") @Validated AdminModel emailUser,
			Principal principal) throws Exception {
		boolean isAuthorize = SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal() instanceof UserDetails;

		if (isAuthorize) {
			String email = principal.getName();
			AdminModel admin = AdminDao.findUserInfo(email);
			model.addAttribute("admin", admin);
		}
		int isCheckEmail = AdminDao.findEmail(emailUser.getEmail());
		if (isCheckEmail == 0) {
			model.addAttribute("errEmail", true);
			return "redirect:/admin/forgot-password";
		}
		String name = AdminDao.getNameAdmin(emailUser.getEmail());
		String newPassword = String.valueOf(randomPassword());
		String bcryptPassword = passwordEncoder.encode(newPassword);

		AdminDao.changePassword(emailUser.getEmail(), bcryptPassword);
		sentEmailTogetPassWord(emailUser.getEmail(), "New login password", name, newPassword);
		model.addAttribute("emailAdmin", new AdminModel());
		model.addAttribute("success", true);
		return "redirect:/admin/forgot-password";
	}

	// Gửi email khi xác nhận tài khoản
	@Override
	public void sentEmail(String to, String subject, String name) throws Exception {
		String result = null;
		MimeMessage message = emailSender.createMimeMessage();
		try {

			MimeMessageHelper helper = new MimeMessageHelper(message, false, "utf-8");
			String htmlMsg = "<head>" +

					"</head>" + "<body> " + "<h3>Watchkingdom store: Please confirm your account</h3></br>" + "<p>Dear "
					+ name + ",</p>" + "<a href='http://localhost:8080/admin/" + to
					+ "/active' class='btn btn-success'>Click here to confirm your account</a>" + "</body>";

			message.setContent(htmlMsg, "text/html");
			helper.setTo(to);
			helper.setSubject(subject);
			result = "success";
			emailSender.send(message);
		} catch (MessagingException e) {
			throw new MailParseException(e);
		} finally {
			if (result != "success") {
				result = "fail";
			}
		}
	}

	// gửi email để lấy password mới khi quên mật khẩu
	@Override
	public void sentEmailTogetPassWord(String to, String subject, String name, String password) throws Exception {
		String result = null;
		MimeMessage message = emailSender.createMimeMessage();
		try {

			MimeMessageHelper helper = new MimeMessageHelper(message, false, "utf-8");
			String htmlMsg = "<body> " + "<h3>Watchkingdom store: New Password</h3></br>" + "<p>Dear " + name + ", <p>"
					+ "<p>New password is " + password + "</p> "
					+ "<a href='http://localhost:8080/login' class='btn btn-success'>Click here to login</a>"
					+ "</body>";

			message.setContent(htmlMsg, "text/html");
			helper.setTo(to);
			helper.setSubject(subject);
			result = "success";
			emailSender.send(message);
		} catch (MessagingException e) {
			throw new MailParseException(e);
		} finally {
			if (result != "success") {
				result = "fail";
			}
		}

	}

	public int randomPassword() {
		int code = (int) Math.floor(((Math.random() * 899999) + 10000000));
		return code;
	}
}
