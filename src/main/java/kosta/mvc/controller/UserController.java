package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String login(HttpServletRequest request, String id, String pwd, String user) {
		HttpSession session = request.getSession();
		if("Customer".equals(user)) {
			if("admin".equals(id)) {
				Admin admin = loginService.adminLogin(id, pwd);
				if(admin==null) {
					request.setAttribute("title", "LOGIN FAILED");
					request.setAttribute("message", "로그인에 실패하였습니다");
					return "index";
				}
				session.setAttribute("id", id);
				session.setAttribute("nickname", admin.getAdminNickname());
				session.setAttribute("role", "admin");
				return "index";
			}
			Customer customer = loginService.customerLogin(id, pwd);
			if(customer==null) {
				request.setAttribute("title", "LOGIN FAILED");
				request.setAttribute("message", "로그인에 실패하였습니다");
				return "index";
			}
			session.setAttribute("id", id);
			session.setAttribute("nickname", customer.getUserNickname());
			session.setAttribute("role", "customer");
		} else if("Seller".equals(user)) {
			Seller seller = loginService.sellerLogin(id, pwd);
			if(seller==null) {
				request.setAttribute("title", "LOGIN FAILED");
				request.setAttribute("message", "로그인에 실패하였습니다");
				return "index";
			}
			session.setAttribute("id", id);
			session.setAttribute("nickname", seller.getSellerNickname());
			session.setAttribute("role", "seller");
		}
		
		return "index";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		
		return "index";
	}
	
	@RequestMapping("/customerRegister")
	public String CustomerRegister(HttpServletRequest request, Customer customer) {
		if(loginService.customerIdCheck(customer.getUserId())!=null) {
			request.setAttribute("title", "SIGNUP FAILED");
			request.setAttribute("message", "회원가입에 실패하였습니다");
			return "index";
		}
		loginService.customerRegister(customer);
		
		return "index";
	}
	
	@RequestMapping("/sellerRegister")
	public String SellerRegister(HttpServletRequest request, Seller seller) {
		if(seller.getRegion()==null) {
			request.setAttribute("title", "SIGNUP FAILED");
			request.setAttribute("message", "지역을 선택하세요");
			return "index";
		}
		if(loginService.sellerIdCheck(seller.getSellerId())!=null) {
			request.setAttribute("title", "SIGNUP FAILED");
			request.setAttribute("message", "회원가입에 실패하였습니다");
			return "index";
		}
		loginService.sellerRegister(seller);
		
		return "index";
	}
	
	@RequestMapping("/findId")
	public String findId(HttpServletRequest request, String email, String user) {
		if("Customer".equals(user)) {
			String id = loginService.selectCustomerIdByemail(email);
			if(id==null) {
				request.setAttribute("title", "INFO NOT FOUND");
				request.setAttribute("message", "해당 email에 대한 정보를 찾을 수 없습니다.");
			} else {
				request.setAttribute("title", "YOUR ID");
				request.setAttribute("message", "당신의 ID는 " + id + "입니다");
			}
		} else if("Seller".equals(user)) {
			String id = loginService.selectSellerIdByemail(email);
			if(id==null) {
				request.setAttribute("title", "INFO NOT FOUND");
				request.setAttribute("message", "해당 email에 대한 정보를 찾을 수 없습니다.");
			} else {
				request.setAttribute("title", "YOUR ID");
				request.setAttribute("message", "당신의 ID는 " + id + "입니다");
			}
		}
		return "index";
	}
	
	@RequestMapping("/findPwd")
	public String findPwd(HttpServletRequest request, String id, String email, String user) {
		if("Customer".equals(user)) {
			String pwd = loginService.selectCustomerPwdByid(id, email);
			if(pwd==null) {
				request.setAttribute("title", "INFO NOT FOUND");
				request.setAttribute("message", "해당 email에 대한 정보를 찾을 수 없습니다.");
			} else {
				request.setAttribute("title", "YOUR PASSWORD");
				request.setAttribute("message", "당신의 PASSWORD는 " + pwd + "입니다");
			}
		} else if("Seller".equals(user)) {
			String pwd = loginService.selectSellerPwdByid(id, email);
			if(pwd==null) {
				request.setAttribute("title", "INFO NOT FOUND");
				request.setAttribute("message", "해당 email에 대한 정보를 찾을 수 없습니다.");
			} else {
				request.setAttribute("title", "YOUR PASSWORD");
				request.setAttribute("message", "당신의 PASSWORD는 " + pwd + "입니다");
			}
		}
		return "index";
	}
	
	@RequestMapping("customerIdCheck")
	@ResponseBody
	public String customerIdCheck(HttpServletRequest request) {
		System.out.println(request.getParameter("id"));
		Customer customer = loginService.customerIdCheck(request.getParameter("id"));
		
		if(customer!=null) {
			return "이미 사용 중인 아이디입니다.";
		}else {
			return "사용가능한 아이디입니다.";
		}
	}
	
	@RequestMapping("sellerIdCheck")
	@ResponseBody
	public String sellerIdCheck(HttpServletRequest request) {
		Seller seller = loginService.sellerIdCheck(request.getParameter("id"));
		
		if(seller!=null) {
			return "이미 사용 중인 아이디입니다.";
		}else {
			return "사용가능한 아이디입니다.";
		}
	}
}
