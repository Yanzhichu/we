package cn.edu.xcu.spring.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import java.time.LocalDate;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author Yanzhichu  zhangsan  snaye
 * @since 2019-09-15
 */
@TableName("t_patient")
public class Patient implements Serializable {

    private static final long serialVersionUID=1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String name;

    private String age;

    private String descri;

    private Integer tid;

    private Double price;

    private LocalDate stadate;

    private LocalDate enddate;


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

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getDescri() {
        return descri;
    }

    public void setDescri(String descri) {
        this.descri = descri;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public LocalDate getStadate() {
        return stadate;
    }

    public void setStadate(LocalDate stadate) {
        this.stadate = stadate;
    }

    public LocalDate getEnddate() {
        return enddate;
    }

    public void setEnddate(LocalDate enddate) {
        this.enddate = enddate;
    }

    @Override
    public String toString() {
        return "Patient{" +
        "id=" + id +
        ", name=" + name +
        ", age=" + age +
        ", descri=" + descri +
        ", tid=" + tid +
        ", price=" + price +
        ", stadate=" + stadate +
        ", enddate=" + enddate +
        "}";
    }
}
