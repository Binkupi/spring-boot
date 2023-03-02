package com.malefashion.admin.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.malefashion.admin.dao.LoaiDAO;
import com.malefashion.admin.dao.WatchDAO;
import com.malefashion.admin.entity.LoaiModel;
import com.malefashion.admin.entity.WatchModel;
import com.malefashion.admin.service.interfaceservice.IWatchService;

@Service
public class WatchService implements IWatchService {
	@Autowired
	private WatchDAO WatchDAO;
	@Autowired
	private LoaiDAO LoaiDAO;

	@Override
	public List<LoaiModel> getListAllLoai() {
		List<LoaiModel> listLoai = LoaiDAO.listAllLoai();
		return listLoai;

	}

	@Override
	public List<WatchModel> getListMenWatch() {
		List<WatchModel> menList = WatchDAO.listMenWatch();
		return menList;
	}

	@Override
	public void storeWatch(HttpServletRequest request, WatchModel watch) {
//		String uploadRootPath = System.getProperty("user.dir");
		String uploadRootPath = new File("src\\main\\resources\\static\\upload").getAbsolutePath();
		MultipartFile[] fileDatas = watch.getFileData2();
		//
		for (MultipartFile fileData : fileDatas) {

			// Tên file gốc tại Client.
			String name = fileData.getOriginalFilename();

			if (name != null && name.length() > 0) {
				try {
					// Tạo file tại Server.
					File serverFile = new File(uploadRootPath + File.separator + name);

					// Luồng ghi dữ liệu vào file trên Server.
					BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
					stream.write(fileData.getBytes());
					stream.flush();
					stream.close();
					watch.setImg("upload/" + name);
					System.out.println(watch.getSoluong() + "-" + watch.getMaloai());
					WatchDAO.insertWatch(watch.getGender(), watch.getName(), watch.getPrice(), watch.getSale(),
							watch.getSize(), watch.getColor(), watch.getChain(), watch.getImg(), 3, watch.getSoluong(),
							watch.getMaloai(), watch.getDescription());
				} catch (Exception e) {
					System.out.println("Error Write file: " + name);
				}
			}
		}
	}

	@Override
	public void updateCheckedWatch(int id, int checked) {
		WatchDAO.updateCheckedWatch(id, checked);
	}

	@Override
	public WatchModel findWatch(int id) {
		return WatchDAO.findWatch(id);
	}

	@Override
	public List<WatchModel> listWatchSameType(int id) {
		return WatchDAO.listWatchSameType(id);
	}

	@Override
	public void updateWatch(WatchModel watch) {
		WatchDAO.updateWatch(watch.getGender(), watch.getName(), watch.getPrice(), watch.getSale(), watch.getSize(),
				watch.getColor(), watch.getChain(), watch.getSoluong(), watch.getMaloai(), watch.getId());
	}

	@Override
	public List<WatchModel> productDeleteWatch(int id) {
		return WatchDAO.productDeleteWatch(id);
	}

}
