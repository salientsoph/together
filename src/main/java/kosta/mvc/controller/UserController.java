package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kosta.mvc.domain.Admin;
import kosta.mvc.domain.Customer;
import kosta.mvc.domain.Seller;
import kosta.mvc.service.LoginService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private LoginService loginService;
	
	@RequestMapping("/login")
	public String list(HttpServletRequest request, String id, String pwd, String user) {
		HttpSession session = request.getSession();
		if("Customer".equals(user)) {
			if("admin".equals(id)) {
				Admin admin = loginService.adminLogin(id, pwd);
				session.setAttribute("id", id);
				session.setAttribute("pwd", pwd);
				session.setAttribute("role", "admin");
				return "user/login";
			}
			Customer customer = loginService.customerLogin(id, pwd);
			session.setAttribute("id", id);
			session.setAttribute("pwd", pwd);
			session.setAttribute("role", "customer");
		} else if("Seller".equals(user)) {
			Seller seller = loginService.sellerLogin(id, pwd);
			session.setAttribute("id", id);
			session.setAttribute("pwd", pwd);
			session.setAttribute("role", "seller");
		}
		
		return "user/login";
	}
	
	@RequestMapping("/customerRegister")
	public String CustomerRegister(Customer customer) {
		loginService.customerRegister(customer);
		
		return "user/login";
	}
	
	@RequestMapping("/sellerRegister")
	public String SellerRegister(Seller seller) {
		loginService.sellerRegister(seller);
		
		return "user/login";
	}
	
	@RequestMapping("/findId")
	public String findId(String email, String user) {
		if("Customer".equals(user)) {
			String id = loginService.selectCustomerIdByemail(email);
		} else if("Seller".equals(user)) {
			String id = loginService.selectSellerIdByemail(email);
		}
		return "user/login";
	}
	
	@RequestMapping("/findPwd")
	public String findPwd(String id, String email, String user) {
		if("Customer".equals(user)) {
			String pwd = loginService.selectCustomerPwdByid(id, email);
		} else if("Seller".equals(user)) {
			String pwd = loginService.selectSellerPwdByid(id, email);
		}
		return "user/login";
	}
}
