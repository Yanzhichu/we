package cn.edu.xcu.spring.service.impl;

import cn.edu.xcu.spring.entity.Patient;
import cn.edu.xcu.spring.mapper.PatientMapper;
import cn.edu.xcu.spring.service.IPatientService;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
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
public class PatientServiceImpl extends ServiceImpl<PatientMapper, Patient> implements IPatientService {
	@Autowired
	private PatientMapper patientMapper;
	
	public IPage<Patient> selectPatientPage() {
	    // 不进行 count sql 优化，解决 MP 无法自动优化 SQL 问题，这时候你需要自己查询 count 部分
	    // page.setOptimizeCountSql(false);
	    // 当 total 为小于 0 或者设置 setSearchCount(false) 分页插件不会进行 count 查询
	    // 要点!! 分页返回的对象与传入的对象是同一个
	    return patientMapper.selectPageVo();
	}


}
