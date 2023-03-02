package com.malefashion.admin.controller;

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

import com.malefashion.admin.dao.AdminDAO;
import com.malefashion.admin.dao.BillDAO;
import com.malefashion.admin.entity.BillDetailModel;
import com.malefashion.admin.entity.BillModel;
import com.malefashion.admin.helper.Helper;
import com.malefashion.admin.service.interfaceservice.IBillService;

@Transactional
@Controller
@ControllerAdvice

public class BillController {

	@Autowired
	IBillService billService;
	@Autowired
	private AdminDAO AdminDao;
	@Autowired
	private BillDAO BillDAO;

	// Trang quản lý bill
	@RequestMapping(value = { "/admin/bill" }, method = RequestMethod.GET)
	public String billWatchPage(Model model, Principal principal) {
		try {
			billService.billWatchPage(model, principal);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "admin/pages/billManagePage/billManage";
	}

	// hiển thị trang update bill
	@RequestMapping(value = { "/admin/bill/update/{id}" }, method = RequestMethod.GET)
	public String updateBill(Model model, @PathVariable("id") int id, Principal principal) {
		List<BillModel> bill = BillDAO.updateBill(id);
		Helper.getAuthentication(model,AdminDao,principal);
		model.addAttribute("bills", bill);
		model.addAttribute("bill", new BillModel());
		return "admin/pages/billManagePage/updateBill";
	}

	// hiển thị trang chi tiết bill
	@RequestMapping(value = { "/admin/bill/{id}" }, method = RequestMethod.GET)
	public String billDetailWatchPage(Model model, @PathVariable("id") int id, Principal principal) {
		try {
			billService.billDetailWatchPage(model, id, principal);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "admin/pages/billManagePage/billDetail";
	}

	// xử lý dữ liệu trạng thái update bill
	@RequestMapping(value = { "/admin/bill/update/{id}" }, method = RequestMethod.POST)
	public String editBill(HttpServletRequest request, Model model, @ModelAttribute("bill") @Validated BillModel bill,
			BindingResult result, HttpSession session, Principal principal) {

		try {
			billService.editBill(request, model, bill, result, session, principal);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "redirect:/admin/bill";
	}

	// xử lý xóa bill
	@RequestMapping(value = { "/admin/bill/delete" }, method = RequestMethod.POST)
	public String productDeleteBill(Model model, @ModelAttribute("bill") @Validated BillModel bill, BindingResult result,
			Principal principal) {
		try {
			return billService.productDeleteBill(model, bill, result, principal);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "redirect:/admin/bill";
	}

	// xử lý xóa chi tiết bill
	@RequestMapping(value = { "/admin/detail-bill/delete" }, method = RequestMethod.POST)
	public String DeleteDetailBill(Model model, @ModelAttribute("detailBill") @Validated BillDetailModel detailBill,
			BindingResult result, Principal principal) {
		try {
			return billService.DeleteDetailBill(model, detailBill, result, principal);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "redirect:/admin/bill/";
	}

}
