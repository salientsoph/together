package kosta.mvc.security;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import kosta.mvc.model.dao.AuthoritiesDAO;
import kosta.mvc.model.dao.MemberDAO;
import kosta.mvc.model.vo.Authority;
import kosta.mvc.model.vo.Member;
import lombok.RequiredArgsConstructor;

/**
 * 로그인 폼에서 전송된 id, password를 Authentication 객체로 전달 받아서 
 * DB 에 저장된 정보와 일치하는지 체크해서
 * 	일치하면.... 사용자 정보를 Authentication에 담아서 리턴함.
 * 	일치하지 않으면... AuthenticationException 라는 익셉션 처리를 해줌.
 * */
@Service //id=memberAuthenticationProvider
@RequiredArgsConstructor
public class MemberAuthenticationProvider implements AuthenticationProvider {
	
	private final MemberDAO memberDAO;
	private final AuthoritiesDAO autoritiyDAO;
	private final PasswordEncoder passwordEncoder;
	

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		// 인수로 전달된 Authentication에서 id 꺼냄
		String userId = authentication.getName();
		
		//DB에 id에 해당하는 정보가 있는지 찾음
		Member member = memberDAO.selectMemberById(userId);
		
		if(member==null) {//없으면 예외처리
			throw new UsernameNotFoundException(userId + "는 존재하지 않는 회원입니다.");
		}
		
		//있으면, DB에 있는 비번과 인수로 전달된 비번 비교 (PasswordEndcoder 이용해서 비교해야됨)
		//왜냐, 들어온건 평문이고, DB에는 암호화된게 있으니까 그냥 비교하면 무조건 다르다고 나옴.
		String pass = authentication.getCredentials().toString();//브라우저에서 들어온 비번(평문)
		String dbPass = member.getPassword(); //db에 들어있는 비번(암호화)
		
		if(!passwordEncoder.matches(pass, dbPass)) {//비번 틀리면 또 예외처리
			                     //평문, 암호화
			throw new UsernameNotFoundException("비밀번호가 일치하지 않습니다.");
		}
				
		//비번이 맞으면 -> 사용자 정보를 Authentication 객체로 만들어서 리턴해줌.
		List<Authority> authoritiesList =  autoritiyDAO.selectAuthorityByUserName(userId);
		
		//authoritiesList를 자료구조를 이용해서 security 권한 타입에 맞게 변환하자.
		List<SimpleGrantedAuthority> simpleAuthority = new ArrayList<SimpleGrantedAuthority>();
		for(Authority au : authoritiesList) {
			simpleAuthority.add( new SimpleGrantedAuthority(au.getRole()) );
		}
		
		
		Authentication authenticationInfo =
				new UsernamePasswordAuthenticationToken(member,	//principal 맴버
													   null,  	//credentials 비번은... 안줘도 됨.
													   simpleAuthority); //권한 리스트를 줘야되는데...
																  		 //SpringSecurity에서 사용하는 권한목록으로 줘야됨.
																		 //Collection<? extends GrantedAuthority> 
																		 //Collection(Set또는, List또는, Map) 형태의 GrantedAuthority를 상속받는 놈을 줘라.
		 return authenticationInfo;
	}

	/**
	 * 인수로 전달된 Authentication 객체가 유효한 객체인지 판단해줌.
	 * 얘는 무조건 authenticate() 메소드 전에 자동으로 호출됨.
	 * 리턴값이 false면 유효하지 않다! -> 인증 안됨.
	 * 			true면 유효하다! -> 인증 가능.
	 * */
	@Override
	public boolean supports(Class<?> authentication) {
		// TODO Auto-generated method stub
		return UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication); 
	}

}
