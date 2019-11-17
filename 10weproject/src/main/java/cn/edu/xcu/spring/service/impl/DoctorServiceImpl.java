package cn.edu.xcu.spring.service.impl;

import java.util.HashSet;
import java.util.Set;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import cn.edu.xcu.spring.entity.Doctor;
import cn.edu.xcu.spring.entity.Role;
import cn.edu.xcu.spring.mapper.DoctorMapper;
import cn.edu.xcu.spring.service.IDoctorService;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author zs Yanzhichu Sanye
 * @since 2019-11-16
 */
@Service
public class DoctorServiceImpl extends ServiceImpl<DoctorMapper, Doctor> implements IDoctorService {

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Doctor doctor = getBaseMapper().findByUsername(username);
		Set<GrantedAuthority> authorities = new HashSet<>();
		for (Role role : doctor.getRoles()) {
			authorities.add(new SimpleGrantedAuthority(role.getName()));
		}
		return new org.springframework.security.core.userdetails.User(username, doctor.getPassword(), authorities);
	}

}
