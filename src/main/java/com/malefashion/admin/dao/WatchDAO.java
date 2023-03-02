package com.malefashion.admin.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.malefashion.admin.mapper.BillDetailMapper;
import com.malefashion.admin.mapper.LoaiMapper;
import com.malefashion.admin.mapper.WatchMapper;
import com.malefashion.admin.entity.BillDetailModel;
import com.malefashion.admin.entity.LoaiModel;
import com.malefashion.admin.entity.WatchModel;

@Repository
@Transactional
public class WatchDAO extends JdbcDaoSupport {
	private JdbcTemplate jdbcTemplateObject;
	
    public WatchDAO(DataSource dataSource) {
        this.setDataSource(dataSource);
    }
	//chức năng tạo ra id khác
    public int getMaxId() {
        String sql = "Select max(d.id) from watch d";
 
        Integer value = this.getJdbcTemplate().queryForObject(sql, Integer.class);
        if (value == null) {
            return 0;
        }
        return value;
    }
    public int getPrice(int id) {
        String sql = "Select price from watch d where id="+id;
 
        Integer value = this.getJdbcTemplate().queryForObject(sql, Integer.class);
        if (value == null) {
            return 0;
        }
        return value;
    }
    public String getNameWatch(int id) {
        String sql = "Select name from watch d where id="+id;
 
        String value = this.getJdbcTemplate().queryForObject(sql, String.class);
        if (value == null) {
            return "";
        }
        return value;
    }
   
 
    public WatchModel findWatch(int id) {
        String sql = WatchMapper.BASE_SQL //
                + " where b.id = ?";
 
        Object[] params = new Object[] { id};
         
        WatchMapper mapper = new WatchMapper();
 
        WatchModel watch = this.getJdbcTemplate().queryForObject(sql, params, mapper);
        return watch;
    }
 
    public List<WatchModel> listWomenWatch() {
        String sql = "Select * from watch b where b.gender=0 and b.checked=1 limit 4";
        
 
        Object[] params = new Object[] {};
        WatchMapper mapper = new WatchMapper();
 
        List<WatchModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
    
    public List<WatchModel> listAllWomenWatch() {
        String sql = "Select * from watch b where b.gender=0 and b.checked=1";
        
 
        Object[] params = new Object[] {};
        WatchMapper mapper = new WatchMapper();
 
        List<WatchModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
    
    public List<WatchModel> listAllMenWatch() {
        String sql = "Select * from watch b where b.gender=1 and b.checked=1 ";
        
 
        Object[] params = new Object[] {};
        WatchMapper mapper = new WatchMapper();
 
        List<WatchModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
    
    public List<WatchModel> listAllProductWatch() {
        String sql = "Select * from watch b ";
        
 
        Object[] params = new Object[] {};
        WatchMapper mapper = new WatchMapper();
 
        List<WatchModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
    
    public List<WatchModel> listAllWatch() {
        String sql = "Select * from watch and b.checked=1";

        Object[] params = new Object[] {};
        WatchMapper mapper = new WatchMapper();
 
        List<WatchModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
    
    public List<WatchModel> productDetailWatch(int id) {
        String sql = "SELECT * FROM watch b where b.id = "+id+" ";
        
        Object[] params = new Object[] {};
        WatchMapper mapper = new WatchMapper();
 
        List<WatchModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
    
    public List<WatchModel> productDeleteWatch(int id) {
        String sql1 = "DELETE FROM watch where id= "+id+" "; 
        String sql2 = "Select * from watch"; 
        
        Object[] params = new Object[]{};
        this.getJdbcTemplate().update(sql1, params);
        WatchMapper mapper = new WatchMapper();
        
        List<WatchModel> list = this.getJdbcTemplate().query(sql2, params, mapper);

        return list;
    }
    
//    public void updateCheckedWatch(int id, int checked)
//    {
//        String sql = "update watch set checked=? where id=? ";
//        Object[] params = new Object[] { checked,id };
//        this.getJdbcTemplate().update(sql, params);
//    }
    
    public List<WatchModel> searchWatch(String keyword) {
    	String sql = "Select * from watch where watch.name like '"+keyword+"%' and watch.checked=1"; 
    	
        Object[] params = new Object[] {};
        WatchMapper mapper = new WatchMapper();
 
        List<WatchModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
 
    public List<WatchModel> filterLeatherWatch() {
    	String sql = "Select * from watch where watch.chain='leather'"; 
    	
        Object[] params = new Object[] {};
        WatchMapper mapper = new WatchMapper();
 
        List<WatchModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
    
    public List<WatchModel> filterChainWatch(String chain,int gender) {
    	String sql = "Select * from watch where watch.chain='"+chain+"' and watch.gender="+gender+" and watch.checked=1 "; 
    	
        Object[] params = new Object[] {};
        WatchMapper mapper = new WatchMapper();
 
        List<WatchModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
    
    
 
    
    public List<WatchModel> filterSizeWatch(String type, int gender) {
    	String sql = "Select * from watch where watch.size='"+type+"' and watch.gender="+gender+" and watch.checked=1 "; 
    	
        Object[] params = new Object[] {};
        WatchMapper mapper = new WatchMapper();
 
        List<WatchModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
    
    
    public List<WatchModel> filterColorWatch(String type,int gender) {
    	String sql = "Select * from watch where watch.color='"+type+"' and watch.gender="+gender+" and watch.checked=1 "; 
    	
        Object[] params = new Object[] {};
        WatchMapper mapper = new WatchMapper();
 
        List<WatchModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }


    

    

    

    

    



    

   
    
    public List<WatchModel> listMenWatch() {
        String sql = "Select * from watch b where b.gender=1 and  b.checked=1  limit 4";
        
 
        Object[] params = new Object[] {};
        WatchMapper mapper = new WatchMapper();
        List<WatchModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
        }
    
 
    public void insertWatch(int gender, String name, int price,int sale, int size, String color, String chain, String img,
			int checked,int soluong, int maloai, String description)
    {
        String sql = "Insert into watch (id,gender, name, price,sale,size,color,chain,img,checked,soluong,maloai,description) "//
                + " values (?,?,?,?,?,?,?,?,?,?,?,?,?) ";
        int id = this.getMaxId() + 1;
        Object[] params = new Object[] { id,gender, name, price,sale,size,color,chain,img,checked,soluong,maloai,description };
        this.getJdbcTemplate().update(sql, params);
    }
    
    public void updateWatch(int gender, String name, int price,int sale, int size, String color, String chain,int soluong, int maloai,int id)
    {
        String sql = "update watch set name='"+name+"' ,gender="+gender+",price="+price+",sale="+sale+",size="+size+",color='"+color+"',chain='"+chain+"',soluong="+soluong+",maloai="+maloai+"  where id = "+id+" ";
        Object[] params = new Object[]{};
        this.getJdbcTemplate().update(sql, params);
    }
    
    public void updateCheckedWatch(int id, int checked)
    {
        String sql = "update watch set checked=? where id=? ";
        Object[] params = new Object[] { checked,id };
        this.getJdbcTemplate().update(sql, params);
    }
    
    public List<WatchModel> listMenWatchPreview() {
        String sql = "Select * from watch b where b.gender=1 and b.checked!=3";
        
 
        Object[] params = new Object[] {};
        WatchMapper mapper = new WatchMapper();
        List<WatchModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
        }
    public List<WatchModel> listWomenWatchPreview() {
        String sql = "Select * from watch b where b.gender=0 and b.checked!=3";
        
 
        Object[] params = new Object[] {};
        WatchMapper mapper = new WatchMapper();
        List<WatchModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
        }
    public int findTypeWatch(int id) {
        String sql = "Select maloai from watch d where d.id="+id;
 
        Integer value = this.getJdbcTemplate().queryForObject(sql, Integer.class);
        if (value == null) {
            return 0;
        }
        return value;
    }
    public List<WatchModel> listWatchSameType(int id) {
    	int maloai=findTypeWatch(id);
        String sql = "Select * from watch b where  b.checked!=3 and b.maloai=? and b.id!=? limit 3";
        Object[] params = new Object[] {maloai,id};
        WatchMapper mapper = new WatchMapper();
        List<WatchModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
        }
    public List<WatchModel> sortWatch(String type,int gender) {
        String sql = "Select * from watch b where  b.checked!=3 and b.gender="+gender+" ORDER BY b.price "+type;
        Object[] params = new Object[] {};
        WatchMapper mapper = new WatchMapper();
        List<WatchModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
        }
    public List<WatchModel> sortByPriceWatch(String type,int gender) {
    	String operator="";
    	if(type.equals("highprice")) {
    		operator=">";
    	}
    	if(type.equals("lowprice")) {
    		operator="<";
    	}
    	
        String sql = "Select * from watch b where  b.checked!=3 and b.gender="+gender+" and b.price "+operator+"2000000";
        Object[] params = new Object[] {};
        WatchMapper mapper = new WatchMapper();
        List<WatchModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
        }
    public int getCountWatch(int gender) {
        String sql = "Select count(*) from watch d where d.gender="+gender;
 
        Integer value = this.getJdbcTemplate().queryForObject(sql, Integer.class);
        if (value == null) {
            return 0;
        }
        return value;
    }
    public int countLoai(int maloai) {
        String sql = "Select count(*) from watch b where maloai="+maloai;
        
        Integer value = this.getJdbcTemplate().queryForObject(sql, Integer.class);
        if (value == null) {
            return 0;
        }
        return value;
    }
}
