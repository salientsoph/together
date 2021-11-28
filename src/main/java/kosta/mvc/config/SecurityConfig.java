package kosta.mvc.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import kosta.mvc.security.MemberAuthenticationFailureHandler;
import kosta.mvc.security.MemberAuthenticationProvider;

@Configuration
@EnableWebSecurity  //WebSecurityConfiguarer
public class SecurityConfig extends WebSecurityConfigurerAdapter {
									//@EnableWebSecurity 와 한 세트임. 시큐리티 관련 설정해주려면 써줘야함.
									//이제 필요한 메소드들을 오버라이딩 해서 사용하자.
	
	@Autowired
	MemberAuthenticationFailureHandler memberAuthenticationFailureHandler;
	@Autowired
	MemberAuthenticationProvider memberAuthenticationProvider;
	
	
	/**
	 * <security:http auto-config="true" use-expressions="true">
	 * 		<security:intercept-url pattern="/member/main" access="isAuthenticated()"/>
			<security:intercept-url pattern="/admin/main" access="hasRole('ADMIN')"/>
			.
			.
			.
		</security:http>
	 * */
	@Override
	protected void configure(HttpSecurity http) throws Exception {
				   						//<security:http ... >
		http
		.authorizeRequests() 			//<security:intercept-url ...>
		.antMatchers("/member/main") 	//pattern="/member/main"
		.authenticated() 				//access="isAuthenticated()"
		.and() 							//태그 하나가 끝났음.
		/////////////////////////////////////////////////////////////////
		.authorizeRequests()			//<security:intercept-url ...>
		.antMatchers("/admin/main")		//pattern="/admin/main"
		.hasRole("ADMIN")				//access="hasRole('ADMIN')"
		.and()
		/////////////////////////////////////////////////////////////////
		//.csrf().disable() 			//<security:csrf disabled="true"/>
		//.and()
		/////////////////////////////////////////////////////////////////
		.formLogin() 					//<security:form-login ...>
		.loginPage("/member/loginForm") //login-page="/member/loginForm"
		.loginProcessingUrl("/login")	//login-processing-url="/login"
		.usernameParameter("id")		//username-parameter="id"	
		.passwordParameter("password")	//password-parameter="password"
		.defaultSuccessUrl("/")			//default-target-url="/" 
		.failureHandler(memberAuthenticationFailureHandler)	
										//authentication-failure-handler-ref="memberAuthenticationFailureHandler" (위에 주입받기위해 오토와이어드로 하나 받자.)
		.and()
		/////////////////////////////////////////////////////////////////
		.logout()						//<security:logout ...>
		.logoutUrl("/member/logout")	//logout-url="/member/logout"
		.logoutSuccessUrl("/")			//logout-success-url="/"
		.invalidateHttpSession(true)	//invalidate-session="true"
		.deleteCookies("JSESSIONID")	//delete-cookies="JSESSIONID"
		.and();
		
	}

	/**
	 * <security:authentication-manager>
			<security:authentication-provider ref="memberAuthenticationProvider"/>
		</security:authentication-manager>
	 * */
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
										//<security:authentication-manager>
		auth.authenticationProvider(memberAuthenticationProvider); 
										//<security:authentication-provider ref="memberAuthenticationProvider"/>
	}
	
	
	
}
