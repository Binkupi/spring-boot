package com.malefashion.admin.service;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.malefashion.admin.dao.AdminDAO;
import com.malefashion.admin.dao.BillDAO;
import com.malefashion.admin.dao.BillDetailDAO;
import com.malefashion.admin.dao.ClientDAO;
import com.malefashion.admin.entity.AdminModel;
import com.malefashion.admin.entity.BillDetailModel;
import com.malefashion.admin.entity.BillModel;
import com.malefashion.admin.entity.ClientModel;
import com.malefashion.admin.helper.Helper;
import com.malefashion.admin.service.interfaceservice.IBillService;

@Service
public class BillService implements IBillService {
	@Autowired
	private BillDAO BillDAO;
	@Autowired
	private BillDetailDAO BillDetailDAO;
	@Autowired
	private AdminDAO AdminDao;
	@Autowired
	private ClientDAO ClientDao;
	// Trang quản lý bill

	@Override
	public void billWatchPage(Model model, Principal principal) throws Exception {
		List<BillModel> billList = BillDAO.listAllBillWatch();
		model.addAttribute("billLists", billList);
		Helper.getAuthentication(model,AdminDao,principal);
		model.addAttribute("bill", new BillModel());
	}

	// hiển thị trang update bill
	@Override
	public void updateBill(Model model, @PathVariable("id") int id, Principal principal) throws Exception {
		List<BillModel> bill = BillDAO.updateBill(id);
		Helper.getAuthentication(model,AdminDao,principal);
		model.addAttribute("bills", bill);
		model.addAttribute("bill", new BillModel());
	}

	// hiển thị trang chi tiết bill
	@Override
	public void billDetailWatchPage(Model model, @PathVariable("id") int id, Principal principal) throws Exception {
		List<BillDetailModel> billDetailList = BillDetailDAO.listAllBillDetailWatch(id);
		ClientModel client = ClientDao.getClientInBill(id);
		model.addAttribute("billDetailLists", billDetailList);
		model.addAttribute("client", client);
		Helper.getAuthentication(model,AdminDao,principal);
		model.addAttribute("detailBill", new BillDetailModel());
	}

	// xử lý dữ liệu trạng thái update bill
	@Override
	public void editBill(HttpServletRequest request, Model model, @ModelAttribute("bill") @Validated BillModel bill,
			BindingResult result, HttpSession session, Principal principal) throws Exception {
		BillDAO.editBill(bill.getId(), bill.getDate(), bill.getDescription());
		Helper.getAuthentication(model,AdminDao,principal);
	}

	// xử lý xóa bill
	@Override
	public String productDeleteBill(Model model, @ModelAttribute("bill") @Validated BillModel bill,
			BindingResult result, Principal principal) throws Exception {
		if (result.hasErrors()) {
			return null;
		}
		Helper.getAuthentication(model,AdminDao,principal);
		int id = bill.getId();
		BillDAO.productDeleteBill(id);
		model.addAttribute("bill", new BillModel());
		return "redirect:/admin/bill";
	}

	// xử lý xóa chi tiết bill
	@Override
	public String DeleteDetailBill(Model model, @ModelAttribute("detailBill") @Validated BillDetailModel detailBill,
			BindingResult result, Principal principal) throws Exception {
		if (result.hasErrors()) {
			return null;
		}
		Helper.getAuthentication(model,AdminDao,principal);
		int id_bill = detailBill.getId_bill();
		int id_watch = detailBill.getId_watch();
		BillDetailDAO.DeleteDetailBill(id_bill, id_watch);
		return "redirect:/admin/bill/" + id_bill;
	}
}
