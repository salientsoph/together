package kosta.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosta.mvc.domain.Admin;
import kosta.mvc.domain.Customer;
import kosta.mvc.domain.Region;
import kosta.mvc.domain.Seller;
import kosta.mvc.repository.AdminRepository;
import kosta.mvc.repository.CustomerRepository;
import kosta.mvc.repository.RegionRepository;
import kosta.mvc.repository.SellerRepository;

@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	private CustomerRepository customerRep;
	
	@Autowired
	private SellerRepository sellerRep;
	
	@Autowired
	private AdminRepository adminRep;
	
	@Autowired
	private RegionRepository regionRep;
	
	@Override
	public Customer customerLogin(String userId, String userPwd) {
		Customer customer = customerRep.customerLogin(userId, userPwd);
		return customer;
	}

	@Override
	public Seller sellerLogin(String sellerId, String sellerPwd) {
		Seller seller = sellerRep.sellerLogin(sellerId, sellerPwd);
		return seller;
	}

	@Override
	public Admin adminLogin(String adminId, String adminPwd) {
		Admin admin = adminRep.adminLogin(adminId, adminPwd);
		return admin;
	}
	
	@Override
	public void customerRegister(Customer customer) {
		customerRep.save(Customer.builder().userId(customer.getUserId())
				                           .userPwd(customer.getUserPwd())
				                           .userName(customer.getUserName())
				                           .userNickname(customer.getUserNickname())
				                           .userEmail(customer.getUserEmail())
				                           .userPhone(customer.getUserPhone())
				                           .userGender(customer.getUserGender())
				                           .userAge(customer.getUserAge())
				                           .build());
	}

	@Override
	public void sellerRegister(Seller seller) {
		Region region = regionRep.findById(seller.getRegion().getRegionCode()).orElse(null);
		
		sellerRep.save(Seller.builder().sellerId(seller.getSellerId())
				                       .sellerPwd(seller.getSellerPwd())
				                       .sellerName(seller.getSellerName())
				                       .sellerNickname(seller.getSellerNickname())
				                       .sellerEmail(seller.getSellerEmail())
				                       .sellerPhone(seller.getSellerPhone())
				                       .sellerRegisterNumber(seller.getSellerRegisterNumber())
				                       .region(region)
				                       .build());
	}

	@Override
	public String selectCustomerIdByemail(String email) {
		String id = customerRep.selectid(email);
		return id;
	}

	@Override
	public String selectSellerIdByemail(String email) {
		String id = sellerRep.selectid(email);
		return id;
	}

	@Override
	public String selectCustomerPwdByid(String id, String email) {
		String pwd = customerRep.selectPwd(id, email);
		return pwd;
	}

	@Override
	public String selectSellerPwdByid(String id, String email) {
		String pwd = sellerRep.selectPwd(id, email);
		return pwd;
	}

}
