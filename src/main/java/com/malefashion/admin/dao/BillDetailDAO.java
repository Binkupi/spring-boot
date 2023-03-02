package com.malefashion.admin.dao;

import java.sql.Date;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.malefashion.admin.mapper.BillDetailMapper;
import com.malefashion.admin.mapper.WatchMapper;
import com.malefashion.admin.entity.BillDetailModel;
import com.malefashion.admin.entity.WatchModel;


@Repository
@Transactional
public class BillDetailDAO extends JdbcDaoSupport{
	@Autowired
    public BillDetailDAO(DataSource dataSource) {
        this.setDataSource(dataSource);
    }
	public int getMaxDetailBillId() {
	       String sql = "Select max(d.id_bill) from detail_bill d";

	       Integer value = this.getJdbcTemplate().queryForObject(sql, Integer.class);
	       if (value == null) {
	           return 0;
	       }
	       return value;
	   }
	
    public List<BillDetailModel> listAllBillDetailWatch(int id) {
        String sql = "SELECT * FROM detail_bill db where db.id_bill = "+id+"";
        
        Object[] params = new Object[] {};
        BillDetailMapper mapper = new BillDetailMapper();
 
        List<BillDetailModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
    
    public List<BillDetailModel> updateBillDetail(int id) {
        String sql = "SELECT * FROM detail_bill db where db.id_bill = "+id+"";
        
        Object[] params = new Object[] {};
        BillDetailMapper mapper = new BillDetailMapper();
 
        List<BillDetailModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
    
    public void InsertDetailBill(int id, int id_Watch,int sl,int total_price,String pttt) {
   	 String sql = "Insert into detail_bill (id_bill,id_watch, amount, total_price,pttt) "//
                + " values (?,?,?,?,?) ";
        Object[] params = new Object[] { id,id_Watch,sl,total_price,pttt };
        this.getJdbcTemplate().update(sql, params);
   }
    
    public void updateWatch(int gender, String name, int price,int sale, int size, String color, String chain,int soluong, int maloai,int id)
    {
        String sql = "update watch set name='"+name+"' ,gender="+gender+",price="+price+",sale="+sale+",size="+size+",color='"+color+"',chain='"+chain+"',soluong="+soluong+",maloai="+maloai+"  where id = "+id+" ";
        Object[] params = new Object[]{};
        this.getJdbcTemplate().update(sql, params);
    }
    
    public void editBillDetail(int id_bill,int amount,int total_price)
    {
    	System.out.println(id_bill);
        String sql = "update detail_bill set amount= " + amount + " , total_price=" + total_price + "   where detail_bill.id_bill = "+id_bill+" ";
        Object[] params = new Object[]{};
        this.getJdbcTemplate().update(sql, params);
    }
    public void  DeleteDetailBill(int id_bill,int id_watch) {
        String sql1 = "DELETE FROM detail_bill where id_bill= "+id_bill+" and id_watch= "+id_watch; 
        
        Object[] params = new Object[]{};
        this.getJdbcTemplate().update(sql1, params);
        
    }
    
}
