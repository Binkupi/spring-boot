package com.malefashion.admin.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.security.Principal;
import java.util.ArrayList;
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
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.support.ByteArrayMultipartFileEditor;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.malefashion.admin.dao.LoaiDAO;
import com.malefashion.admin.dao.AdminDAO;
import com.malefashion.admin.dao.WatchDAO;
import com.malefashion.admin.entity.AdminModel;
import com.malefashion.admin.entity.BillDetailModel;
import com.malefashion.admin.entity.LoaiModel;
import com.malefashion.admin.entity.WatchModel;
import com.malefashion.admin.entity.products;
import com.malefashion.admin.helper.Helper;
import com.malefashion.admin.service.interfaceservice.IWatchService;


@Transactional
//Cần thiết để sử dụng RedirectAttributes
@Controller
@ControllerAdvice
//Cần thiết để sử dụng RedirectAttributes
public class WatchController {
//	@Autowired 
//	private WatchDAO WatchDAO;
//	@Autowired 
//	private LoaiDAO LoaiDAO;
	@Autowired
	private AdminDAO AdminDao;
	@Autowired
	private IWatchService watchService;
	//hiển thị trang tạo sản phẩm
    @RequestMapping(value = { "/admin/watchs/create" }, method = RequestMethod.GET)
    public String addWatch(Model model,Principal principal) {  
    	try {
    		Helper.getAuthentication(model,AdminDao,principal);
    		List<LoaiModel> listLoai=watchService.getListAllLoai();
            List<WatchModel> menList = watchService.getListMenWatch();
            model.addAttribute("menWatchs", menList);
            model.addAttribute("loais", listLoai);
            model.addAttribute("watch", new WatchModel());
            return "admin/pages/CRUDpage/create";
    	}catch(Exception ex) {
    		ex.printStackTrace();
    	}finally {
    		
    	}
    	return "admin/pages/CRUDpage/create";
    	
        
    }
    
    //Xử lý dữ liệu trong trang tạo sản phẩm
    @RequestMapping(value = { "/admin/watchs" }, method = RequestMethod.POST)
//    @ResponseBody
    public  String storeWatch(HttpServletRequest request,  Model model,@ModelAttribute("watch") @Validated WatchModel watch,BindingResult result,HttpSession session) {
//    	if (result.hasErrors()) {
//    		return null;
//        }
    	// Thư mục gốc upload file.
    	watchService.storeWatch(request,watch);
        return "redirect:/admin/watchs";
        
    }
    //hiển thị trang priew
    @RequestMapping(value = { "/admin/watchs/preview/{id}" }, method = RequestMethod.POST)
  public  String changePreviewWatch(HttpServletRequest request,  Model model,@ModelAttribute("watch") @Validated WatchModel watch,@PathVariable("id") int id,BindingResult result,HttpSession session,Principal principal) {
  	if (result.hasErrors()) {
  		return null;
      }
  		Helper.getAuthentication(model,AdminDao,principal);
      watchService.updateCheckedWatch(id, watch.getChecked());
      return "redirect:/admin/watchs";
      
  }
    
	@RequestMapping(value = { "/watchs/{id}" }, method = RequestMethod.GET)
	public String DetailWatch(Model model,@PathVariable("id") int id,Principal principal) {
		Helper.getAuthentication(model,AdminDao,principal);
		WatchModel DetailWatch = watchService.findWatch(id);
		model.addAttribute("watch", DetailWatch);
		List<WatchModel> sameTypeWatch=watchService.listWatchSameType(id);
		System.out.println(sameTypeWatch);
		model.addAttribute("sameTypeWatchs", sameTypeWatch);
		return "detail";
	}
	
	//phương thức update sản phẩm
	@RequestMapping(value = { "/admin/watchs/{id}/update" }, method = RequestMethod.POST)
	 public String updateWatch(HttpServletRequest request,  Model model,@ModelAttribute("watch") @Validated WatchModel watch,BindingResult result,HttpSession session,Principal principal) { 	
		Helper.getAuthentication(model,AdminDao,principal);
		watchService.updateWatch(watch);          
          return "redirect:/admin/watchs";
	 }
	 	
	//phương thức xóa sản phẩm
	 @RequestMapping(value = { "/admin/watchs/delete" }, method = RequestMethod.POST)
		public String productDeleteWatch( Model model, @ModelAttribute("watch") @Validated WatchModel watch,BindingResult result,Principal principal) {
		 if (result.hasErrors()) {
	    		return null;
	        }
		 Helper.getAuthentication(model,AdminDao,principal);
		 int id=watch.getId();
		 List<WatchModel> productList = watchService.productDeleteWatch(id);
			model.addAttribute("productWatchs", productList);
			model.addAttribute("watch", new WatchModel());
			return "redirect:/admin/watchs";
		}

}
