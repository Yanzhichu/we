package cn.edu.xcu.spring.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import cn.edu.xcu.spring.service.IDoctorService;

@Configuration
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	private IDoctorService iDoctorService;
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();
		http.authorizeRequests().antMatchers("/**/*.js", "/**/*.css", "/**/*.css.map", "/**/*.jpg").permitAll()
				.anyRequest().authenticated().antMatchers("/**").access("hasRole('ROLE_DOCOTR')").and().formLogin()
				.usernameParameter("username").passwordParameter("password").loginPage("/toLogin")
				.defaultSuccessUrl("/home").permitAll();
	}

	// 配置认证管理器
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(iDoctorService);// 配置用户名 业务层需要继承userDetailsService
	}
	//创建密码编译器   否则会出现密码为空
	@Bean
	public PasswordEncoder creatPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}
}
