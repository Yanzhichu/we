package cn.edu.xcu.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import cn.edu.xcu.spring.entity.Role;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author zs Yanzhichu Sanye
 * @since 2019-11-16
 */
public interface RoleMapper extends BaseMapper<Role> {
	@Select("select * from t_role where id in (select roleid from t_doctor_role where doctorid=#{doctorId})")
	List<Role> findByUserId(int doctorId);
}
