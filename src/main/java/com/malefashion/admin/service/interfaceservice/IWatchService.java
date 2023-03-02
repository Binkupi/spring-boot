package com.malefashion.admin.service.interfaceservice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.malefashion.admin.entity.LoaiModel;
import com.malefashion.admin.entity.WatchModel;

public interface IWatchService {
	public List<LoaiModel> getListAllLoai();
	public List<WatchModel> getListMenWatch();
	public void storeWatch(HttpServletRequest request,WatchModel watch);
	public void updateCheckedWatch(int id, int checked);
	public WatchModel findWatch(int id);
	public List<WatchModel> listWatchSameType(int id);
	public void updateWatch(WatchModel watch);
	public List<WatchModel> productDeleteWatch(int id);
}
