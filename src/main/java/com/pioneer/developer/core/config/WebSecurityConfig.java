package com.pioneer.developer.core.config;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.security.web.firewall.HttpFirewall;
import org.springframework.security.web.firewall.StrictHttpFirewall;

import com.pioneer.developer.core.security.SHAEncryptor;
import com.pioneer.developer.core.utils.JsonUtils;
import com.pioneer.developer.member.login.service.impl.MemberLogingServiceImpl;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Configuration
@EnableWebSecurity
@AllArgsConstructor
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{

	  private final MemberLogingServiceImpl memberService;

	// web 및 swagger 디렉터리의 하위 파일 목록은 인증 무시 (== 항상통과)
	@Override
	public void configure(WebSecurity web) throws Exception {
		super.configure(web);

		web.ignoring().antMatchers("/web/**",
				                   "/swagger-ui.html/",
				                   "/swagger-ui.html/**"
				                  );

		web.httpFirewall(allowUrlEncodedSlashHttpFirewall());

	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable()
			.headers().frameOptions().disable()
			.and()
			.authorizeRequests()
				.antMatchers("/", "/rest/**", "/home/product/list","/member/join/**",
						"/rest/member/login/**", "/member/login/**").permitAll() // 해당 url 은 비회원도 허용
				.antMatchers("/home/**").hasAnyRole("MEMBER","SELLER","SYSTEM") // home [멤버,판매자,관리자]
				.antMatchers("/seller/**").hasAnyRole("SELLER","SYSTEM") //
				.antMatchers("/sys/**").hasAnyRole("SYSTEM")
				.antMatchers("/**").authenticated()
				.and()
			.formLogin()
				.loginPage("/member/join/loginSignUp") // 로그인 페이지
				.loginProcessingUrl("/rest/member/login/signin") // 로그인 FORM ACTION 과 동일
				.usernameParameter("id")
				.passwordParameter("password")
//				.authenticationDetailsSource(authenticationDetailsSource())
				.successHandler(authenticationSuccessHandler())
				.failureHandler(authenticationFailureHandler())
//				.successForwardUrl("/")
				.permitAll()
				.and()
			.logout()
				.logoutUrl("/member/login/memberlogout")
				.logoutSuccessHandler(logoutSuccessHandler())
				.invalidateHttpSession(true)
				.logoutSuccessUrl("/")
				.and()
			.sessionManagement()
//				.maximumSessions(1) //첫 번째 로그인한 세션을 유지하고 두 번째 중복 로그인한 세션을 막기
//				.maxSessionsPreventsLogin(true)
//					.expiredUrl("/member/join/loginSignUp") // 중복로그인 발생시 이동할 페이지
//					.and()
				.invalidSessionUrl("/member/join/loginSignUp") // 세션이 끊겨졌을때 이동할 페이지
				.and()
			.exceptionHandling()
				.accessDeniedPage("/error/403")
//				.authenticationEntryPoint(customAuthenticationEntryPointHandler()) // 여기서 해외IP막을까 고민.. aws를 믿자
//				.accessDeniedHandler(customAccessDeniedHandler())
				.and()
			.httpBasic();

	}

	// 로그인 성공 핸들러
	AuthenticationSuccessHandler authenticationSuccessHandler() {
		return new AuthenticationSuccessHandler() {

			@Override
			public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
					Authentication authentication) throws IOException, ServletException {

				log.info("########## onAuthenticationSuccess ############");
				log.info("######### 로그인 성공시 ##########");

				log.info("" + request.getAttribute("id"));
				log.info("" + request.getAttribute("name"));

				log.info("" + JsonUtils.toJson(authentication));
				log.info("" + authentication.getCredentials());

				if(hasRole("ROLE_SYSTEM")) {
					response.sendRedirect("/sys/main/view");
				} else if (hasRole("ROLE_SELLER")) {
					response.sendRedirect("/seller/main/view");
				} else {
					response.sendRedirect("/");
				}

			}
		};
	}

	// 로그인 실패 핸들러
	public AuthenticationFailureHandler authenticationFailureHandler() {
		return new AuthenticationFailureHandler() {

			@Override
			public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
					AuthenticationException exception) throws IOException, ServletException {

				//TODO :: SpringSecurityMessageSource || 에러 메세지 프로퍼티 작업 필요
				log.info(" ###### onAuthenticationFailure ######");
				log.info("######### 로그인 실패시 ##########");
				log.info(" >>>>>>>>>>>>>>> FAILURE : " + request.getParameter("id"));
				log.info(" >>>>>>>>>>>>>>> FAILURE : " + exception.getMessage());
				log.info(" INVALIDATE BEFORE >>>>>>>>>>>>>> " + request.getSession().getAttribute("id"));
				request.getSession().invalidate();

//				 HttpSession session = request.getSession(false);

				String errorMsg = "";
				if("아이디를 확인해주세요.".equals(exception.getMessage())) {
					errorMsg = exception.getMessage();
				} else if("Bad credentials".equals(exception.getMessage())) {
					errorMsg = "비밀번호를 확인해주세요.";
				} else if ("Maximum sessions of 1 for this principal exceeded".equals(exception.getMessage())) {
					errorMsg = "이미 로그인 중입니다. 중복 로그인은 불가능합니다.";
				} else {
					errorMsg = "다시 시도해주세요.";
				}
				log.info(" INVALIDATE AFTER >>>>>>>>>>>>>> " + request.getSession().getAttribute("id"));
				request.setAttribute("id", request.getParameter("id"));
				request.setAttribute("errorMsg", errorMsg);

				request.getRequestDispatcher("/member/join/loginSignUp").forward(request, response);
			}

		};
	}

	@Override
	public void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(memberService).passwordEncoder(passwordEncoder());
	}

	// 로그아웃 핸들러
	public LogoutSuccessHandler logoutSuccessHandler() {
		return new LogoutSuccessHandler() {

			@Override
			public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response,
					Authentication authentication) throws IOException, ServletException {

				log.info("onLogoutSuccess ####################");
				log.info("onLogoutSuccess >>>> : " + request.getSession().getAttribute("id"));
				log.info("onLogoutSuccess >>>> : " + authentication.getName().toString());

				request.getSession().invalidate();
				authentication.setAuthenticated(false);

				response.sendRedirect("/");
			}
		};
	}

	// 비밀번호 암호화 모듈
	@Bean
	public static PasswordEncoder passwordEncoder() {
		return new SHAEncryptor();
	}

	@Bean
	public HttpFirewall allowUrlEncodedSlashHttpFirewall() {
		StrictHttpFirewall firewall = new StrictHttpFirewall();
		firewall.setAllowUrlEncodedSlash(true);
		firewall.setAllowSemicolon(true);
		return firewall;
	}

	 protected boolean hasRole(String role) {
	        // get security context from thread local
	        SecurityContext context = SecurityContextHolder.getContext();
	        if (context == null)
	            return false;

	        Authentication authentication = context.getAuthentication();
	        if (authentication == null)
	            return false;

	        for (GrantedAuthority auth : authentication.getAuthorities()) {
	            if (role.equals(auth.getAuthority()))
	                return true;
	        }

	        return false;
	    }

}
