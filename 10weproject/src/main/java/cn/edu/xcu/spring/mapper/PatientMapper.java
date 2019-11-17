package cn.edu.xcu.spring.mapper;

import org.apache.ibatis.annotations.Select;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import cn.edu.xcu.spring.entity.Patient;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author Yanzhichu zhangsan snaye
 * @since 2019-11-15
 */
public interface PatientMapper extends BaseMapper<Patient> {
	@Select("select tp.id id,tp.name name,tp.age age,tp.descri 	descri,tp.tid tid,tp.price price,tp.stadate stadate,tp.enddate enddate,ts.id sid,ts.name sname from t_patient tp INNER JOIN t_subjects ts on ts.id=tp.tid")
	IPage<Patient> selectPageVo();
}
