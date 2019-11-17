package cn.edu.xcu.spring.service;

import cn.edu.xcu.spring.entity.Doctor;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author zs Yanzhichu Sanye
 * @since 2019-11-16
 */
public interface IDoctorService extends IService<Doctor>, UserDetailsService {

}
