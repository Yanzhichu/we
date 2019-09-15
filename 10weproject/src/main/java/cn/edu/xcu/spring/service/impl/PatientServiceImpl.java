package cn.edu.xcu.spring.service.impl;

import cn.edu.xcu.spring.entity.Patient;
import cn.edu.xcu.spring.mapper.PatientMapper;
import cn.edu.xcu.spring.service.IPatientService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Yanzhichu  zhangsan  snaye
 * @since 2019-09-15
 */
@Service
public class PatientServiceImpl extends ServiceImpl<PatientMapper, Patient> implements IPatientService {

}