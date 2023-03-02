package com.malefashion.admin.service.interfaceservice;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.malefashion.admin.entity.BillDetailModel;
import com.malefashion.admin.entity.BillModel;

public interface IBillService {
	public void billWatchPage(Model model,Principal principal) throws Exception;
	public void updateBill(Model model,@PathVariable("id") int id,Principal principal) throws Exception;;
	public void billDetailWatchPage(Model model,@PathVariable("id") int id,Principal principal) throws Exception;
	public void editBill(HttpServletRequest request,  Model model,@ModelAttribute("bill") @Validated BillModel bill,BindingResult result,HttpSession session,Principal principal) throws Exception;
	public String productDeleteBill( Model model, @ModelAttribute("bill") @Validated BillModel bill,BindingResult result,Principal principal) throws Exception;
	public String DeleteDetailBill( Model model, @ModelAttribute("detailBill") @Validated BillDetailModel detailBill,BindingResult result,Principal principal) throws Exception;
}
