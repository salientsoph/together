package kosta.mvc.service;

import kosta.mvc.domain.Admin;
import kosta.mvc.domain.Customer;
import kosta.mvc.domain.Seller;

public interface LoginService {
	Customer customerLogin(String userId, String userPwd);
	
	Seller sellerLogin(String sellerId, String sellerPwd);
	
	Admin adminLogin(String adminId, String adminPwd);
	
	void customerRegister(Customer customer);
	
	void sellerRegister(Seller seller);
	
	String selectCustomerIdByemail(String email);
	
	String selectSellerIdByemail(String email);
	
	String selectCustomerPwdByid(String id, String email);
	
	String selectSellerPwdByid(String id, String email);
	
	Customer customerIdCheck(String id);
	
	Seller sellerIdCheck(String id);

}
