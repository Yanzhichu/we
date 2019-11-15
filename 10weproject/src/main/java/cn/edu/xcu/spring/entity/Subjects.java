package cn.edu.xcu.spring.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author Yanzhichu  zhangsan  snaye
 * @since 2019-11-15
 */
@TableName("t_subjects")
public class Subjects implements Serializable {

    private static final long serialVersionUID=1L;

    private Integer id;

    private String name;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Subjects{" +
        "id=" + id +
        ", name=" + name +
        "}";
    }
}
