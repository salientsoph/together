package kosta.mvc.controller;

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
	public String list(String id, String pwd, String user) {
		if("Customer".equals(user)) {
			if("admin".equals(id)) {
				Admin admin = loginService.adminLogin(id, pwd);
				return "user/login";
			}
			Customer customer = loginService.customerLogin(id, pwd);
		} else if("Seller".equals(user)) {
			Seller seller = loginService.sellerLogin(id, pwd);
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
