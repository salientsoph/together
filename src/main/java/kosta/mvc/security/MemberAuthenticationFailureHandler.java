package kosta.mvc.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Service;

/**
 *  인증에 실패했을 때 해야할 일을 하고 이동한다.
 * */
@Service //id = memberAuthenticationFailureHandler
public class MemberAuthenticationFailureHandler implements AuthenticationFailureHandler {

	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		// TODO Auto-generated method stub

		System.out.println("인증 실패시 호출");
		
		request.setAttribute("errorMessage", exception.getMessage());
		
		request.getRequestDispatcher("/WEB-INF/views/member/loginForm.jsp").forward(request, response);
		//이건 디스패쳐서블릿에서 이동하는게 아니라 그거 나오기 전에 실행하는거라서
		//가는 목적지를 직접 써줘야함.
		//forward방식이기 때문에 주소창에다가 저걸 치는거랑은 다르다.
	}

}
