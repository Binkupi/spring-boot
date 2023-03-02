package com.malefashion.admin.service;

import java.security.Principal;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailParseException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.malefashion.admin.dao.AdminDAO;
import com.malefashion.admin.dao.BillDAO;
import com.malefashion.admin.dao.BillDetailDAO;
import com.malefashion.admin.dao.ClientDAO;
import com.malefashion.admin.dao.WatchDAO;
import com.malefashion.admin.entity.AdminModel;
import com.malefashion.admin.entity.ClientModel;
import com.malefashion.admin.entity.products;
import com.malefashion.admin.service.interfaceservice.IPaymentService;

@Service
public class PaymentService implements IPaymentService{
	@Autowired
	 private WatchDAO WatchDAO;
	 @Autowired
	 private ClientDAO ClientDAO;
	 @Autowired
	 private BillDetailDAO BillDetailDAO;
	 @Autowired
	 private BillDAO BillDAO;
	 @Autowired
	 private AdminDAO AdminDao;
	 @Autowired
	   public JavaMailSender emailSender;
	 @Override
	 public String AddBillSuccess(ClientModel client) {
		//phân tích giỏ hàng
		 String test=client.getGiohang().replace("[","");
		 test=test.replace("]", "");
		 String[] Arrs = test.split("&&");
		 int count=Arrs.length;
		 String arr;
		 String nameWatchOfList="";
		 products[] products=new products[count];
	     for(int i=0;i<count;i++) {
	    	  arr=Arrs[i].replace(")", "");
	    	  arr=arr.replace("(", "");
	    	  String[] query=arr.split(",");
	    	 products[i]=new products();
	    	 products[i].setId(Integer.valueOf(query[0]));
	    	 products[i].setSl(Integer.valueOf(query[1]));
	    	 };
	     	int ClientId=ClientDAO.getMaxClientId();
	     	int BillId=BillDAO.getMaxBillId();

//	     	
	     	ClientDAO.InsertClient(ClientId+1, client.getName(), client.getAddress(), client.getPhone(),client.getEmail());
	     	BillDAO.InsertBill(BillId+1, ClientId+1);
	     	int total_price=0;
	     	int dem=0;
	     	for(int i=0;i<count;i++) {
	     		total_price=WatchDAO.getPrice(products[i].getId())*products[i].getSl();
	     		BillDetailDAO.InsertDetailBill(BillId+1, products[i].getId(), products[i].getSl(), total_price, client.getDescription());
	     		if(dem<count-1) {
	     			nameWatchOfList+=WatchDAO.getNameWatch(products[i].getId())+", ";
	     			dem++;
	     		}else {
	     			nameWatchOfList+=WatchDAO.getNameWatch(products[i].getId());
	     			dem++;
	     		}
	     		
	     	}
	     	sentEmailToClient(client.getEmail(),"Order confirmation successful",BillId,nameWatchOfList,total_price,client.getName());
	     	sentEmailToAdmin("18521312@gm.uit.edu.vn","You have a new order!",BillId,nameWatchOfList,total_price);	
	     	return "redirect:/thanhtoan";
	    }
	 //gửi thông báo email chi tiết hóa đơn cho khách hàng
	 public void sentEmailToClient(String to,String subject,int id_Bill,String nameProduct, int totalPrice,String name) {
		 String result =null;
		    MimeMessage message =emailSender.createMimeMessage();
		    try {

		        MimeMessageHelper helper = new MimeMessageHelper(message, false, "utf-8");
		        String htmlMsg = "<body> "+
		        		"<h3>Watchkingdom store: Your order has been placed successfully</h3></br>"+
		        		"<p>Dear "+name+",</p>"+
		        		"<p>Code order is: "+id_Bill+"</p>"+
		        		"<p>Product's name: "+nameProduct+"</p>"+
		        		"<p>total Price: "+totalPrice+" VND</p>"+
		        		"<p>Booking date: "+java.time.LocalDate.now()+"</p></br>"
		        		+"<a href='http://localhost:8080' class='btn btn-success'>Click here to check the order!</a>"+
		        
		        		"</body>";		
		        message.setContent(htmlMsg, "text/html");
		        helper.setTo(to);
		        helper.setSubject(subject);
		        result="success";
		        emailSender.send(message);
		    } catch (MessagingException e) {
		        throw new MailParseException(e);
		    }finally {
		        if(result !="success"){
		            result="fail";
		        }
		    }

		}
	 public void sentEmailToCustomer(String to,String subject,int id_Bill,String nameProduct, int totalPrice) {
		 String result =null;
		    MimeMessage message =emailSender.createMimeMessage();
		    try {

		        MimeMessageHelper helper = new MimeMessageHelper(message, false, "utf-8");
		        String htmlMsg = "<body> "+
		        		"<h3>WatchKingdom Store: Your order has been placed successfully!</h3></br>"+
		        		"<p>Order code: "+id_Bill+"</p>"+
		        		"<p>Product's name: "+nameProduct+"</p>"+
		        		"<p>Total price: "+totalPrice+" dong</p>"+
		        		"<p>Booking date: "+java.time.LocalDate.now()+"</p></br>"
		        		+"<a href='http://localhost:8080' class='btn btn-success'>Click here to continue shopping!</a>"+
		        
		        		"</body>";		
		        message.setContent(htmlMsg, "text/html");
		        helper.setTo(to);
		        helper.setSubject(subject);
		        result="success";
		        emailSender.send(message);
		    } catch (MessagingException e) {
		        throw new MailParseException(e);
		    }finally {
		        if(result !="success"){
		            result="fail";
		        }
		    }

		}
	 public void sentEmailToAdmin(String to,String subject,int id_Bill,String nameProduct, int totalPrice) {
		 String result =null;
		    MimeMessage message =emailSender.createMimeMessage();
		    try {

		        MimeMessageHelper helper = new MimeMessageHelper(message, false, "utf-8");
		        String htmlMsg = "<body> "+
		        		"<h3>WatchKingdom Store: You have a new order!</h3></br>"+
		        		"<p>Order code: "+id_Bill+"</p>"+
		        		"<p>Product's name: "+nameProduct+"</p>"+
		        		"<p>Total price: "+totalPrice+" VND</p>"+
		        		"<p>Booking date: "+java.time.LocalDate.now()+"</p></br>"
		        		+"<a href='http://localhost:8080/admin/bill' class='btn btn-success'>Click here to see new order!</a>"+
		        
		        		"</body>";		
		        message.setContent(htmlMsg, "text/html");
		        helper.setTo(to);
		        helper.setSubject(subject);
		        result="success";
		        emailSender.send(message);
		    } catch (MessagingException e) {
		        throw new MailParseException(e);
		    }finally {
		        if(result !="success"){
		            result="fail";
		        }
		    }

		}
	 
	 public void sentEmail(String to,String subject) {
		 String result =null;
		    MimeMessage message =emailSender.createMimeMessage();
		    try {

		        MimeMessageHelper helper = new MimeMessageHelper(message, false, "utf-8");
		        String htmlMsg = "<body "+
		        		"<h3>Watchkingdom store: Xác nhận đơn hàng</h3></br>"
		        		+"<a href='http://localhost:8080/admin/"+to+"/active'>Click here to confirm email</a>"
		        		+ "</body>";
		        message.setContent(htmlMsg, "text/html");
		        helper.setTo(to);
		        helper.setSubject(subject);
		        result="success";
		        emailSender.send(message);
		    } catch (MessagingException e) {
		        throw new MailParseException(e);
		    }finally {
		        if(result !="success"){
		            result="fail";
		        }
		    }

		}
}
