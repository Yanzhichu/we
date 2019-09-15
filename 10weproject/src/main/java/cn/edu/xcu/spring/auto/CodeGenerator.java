package cn.edu.xcu.spring.auto;

import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.InjectionConfig;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.StrategyConfig;
import com.baomidou.mybatisplus.generator.config.TemplateConfig;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
/**
 * 代码生成器
 */
public class CodeGenerator {
	public static void main(String[] args) {
		//配置GlobalConfig
				GlobalConfig globalConfig = new GlobalConfig();
				globalConfig.setOutputDir(System.getProperty("user.dir") + "/src/main/java");
				globalConfig.setAuthor("Yanzhichu  zhangsan  snaye");
				globalConfig.setOpen(true);
				
				//链接数据库
				DataSourceConfig dataSourceConfig = new DataSourceConfig();
				dataSourceConfig.setUrl("jdbc:mysql://localhost:3306/spring?useUnicode=true&useSSL=false&characterEncoding=utf8&serverTimezone=UTC");
				dataSourceConfig.setDriverName("com.mysql.jdbc.Driver");
				dataSourceConfig.setUsername("root");
				dataSourceConfig.setPassword("root");
				
				//自定义代码模板
				TemplateConfig templateConfig = new TemplateConfig();
				
				//自定义属性注入
				InjectionConfig injectionConfig = new InjectionConfig() {
				    public void initMap() {
				       
				    }
				};
				//配制包，不配置的话默认的包名是baomidou
				PackageConfig packageConfig=new PackageConfig();
				packageConfig.setParent("cn.edu.xcu.spring");
				
				//生成策略，告诉生成器表名的前缀
				StrategyConfig strategyConfig=new StrategyConfig();
				strategyConfig.setTablePrefix("t");
				
				//将表中的下划线命名，转为类的驼峰命名法
				strategyConfig.setNaming(NamingStrategy.underline_to_camel);
				
				//将所设置的添加到自动生成器
				AutoGenerator autogenerator=new AutoGenerator();
				autogenerator.setGlobalConfig(globalConfig);
				autogenerator.setDataSource(dataSourceConfig);
				autogenerator.setTemplate(templateConfig);
				autogenerator.setCfg(injectionConfig);
				autogenerator.setPackageInfo(packageConfig);
				autogenerator.setStrategy(strategyConfig);
				
				autogenerator.execute();//执行s
	}
}
