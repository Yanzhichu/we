package cn.edu.xcu.spring.service;

import cn.edu.xcu.spring.entity.Patient;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Yanzhichu  zhangsan  snaye
 * @since 2019-11-15
 */
public interface IPatientService extends IService<Patient> {
	
	IPage<Patient> selectPatientPage();
}
