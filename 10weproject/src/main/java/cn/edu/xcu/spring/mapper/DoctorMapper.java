package cn.edu.xcu.spring.mapper;

import cn.edu.xcu.spring.entity.Doctor;

import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author zs Yanzhichu Sanye
 * @since 2019-11-16
 */
public interface DoctorMapper extends BaseMapper<Doctor> {
	/*
	 * @Select("select * from t_user where name=#{username}")
	 * 
	 * @Results({ @Result(column = "id", property = "id"),
	 * 
	 * @Result(many = @Many(select =
	 * "cn.edu.xcu.slm.mapper.RoleMapper.findByUserId"), column = "id", property =
	 * "roles") })
	 */
	@Select("select * from t_doctor where username=#{username}")
	@Results({ @Result(column = "id", property = "id"),
			@Result(many = @Many(select = "cn.edu.xcu.spring.mapper.RoleMapper.findByUserId"), column = "id", property = "roles") })
	Doctor findByUsername(String username);

}
