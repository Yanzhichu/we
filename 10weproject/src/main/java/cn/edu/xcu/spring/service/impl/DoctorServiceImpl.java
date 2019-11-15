package cn.edu.xcu.spring.service.impl;

import cn.edu.xcu.spring.entity.Doctor;
import cn.edu.xcu.spring.mapper.DoctorMapper;
import cn.edu.xcu.spring.service.IDoctorService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Yanzhichu  zhangsan  snaye
 * @since 2019-11-15
 */
@Service
public class DoctorServiceImpl extends ServiceImpl<DoctorMapper, Doctor> implements IDoctorService {

}
