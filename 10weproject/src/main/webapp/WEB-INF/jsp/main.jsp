<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>就诊人员信息列表</title>
<link rel="stylesheet" href="bower_components/layui/dist/css/layui.css">
<link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="css/shouye.css" type="text/css" media="all" />
</head>
<body class="layui-layout-body">


	<div class="layui-tab layui-tab-card">
		<ul class="layui-tab-title">
			<li class="layui-this layui-bg-green">首页</li>
			<li>病人信息列表</li>
			<li>健康小知识</li>
			<li>均衡饮食</li>

			<li class="layui-layout-right" ><button type="button" style="background-color: red" class="layui-btn layui-btn-primary layui-btn-radius"><a href="logout">退出</a></button></li>
		</ul>

		<div class="layui-tab-content" style="height: 100%;">

			<div class="layui-tab-item layui-show">
				<div class="team he-codes">
		<!-- team content -->
		<div class="team-cont text-center pt-5 pb-xl-4 pb-3">
			<h3 class="title text-center text-wh font-weight-bold">医院管理系统</h3>
			<div class="container pt-xl-5 pt-4">
				<div class="row team-bottom pt-md-5 pt-4">
					<div class="col-lg-3 col-sm-6 team-grid">
						<img src="css/images/t1.jpg" class="img-fluid">
						<div class="caption">
							<div class="team-text">
								<h4>健康</h4>
							</div>
							
						</div>
					</div>
					<div class="col-lg-3 col-sm-6 team-grid mt-sm-0 mt-5">
						<img src="css/images/t2.jpg" class="img-fluid">
						<div class="caption">
							<div class="team-text">
								<h4>医疗</h4>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6 team-grid mt-lg-0 mt-5">
						<img src="css/images/t3.jpg" class="img-fluid" alt="">
						<div class="caption">
							<div class="team-text">
								<h1>安全</h1>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6 team-grid  mt-lg-0 mt-5">
						<img src="css/images/t4.jpg" class="img-fluid" alt="">
						<div class="caption">
							<div class="team-text">
								<h2>你好</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
			</div>

			<!-- 22222222222222222222222 -->
			<div class="layui-tab-item  ">
				<div class="layui-layout layui-layout-admin">

					
					<!-- 左部垂直菜单 -->
					<div class="layui-side layui-bg-black">
						<!-- 面板嵌套 -->
						<div class="layui-collapse">
							<div class="layui-colla-item">
								<h2 class="layui-colla-title">医院简介</h2>
								<div class="layui-colla-content">
									<p>医院是指按照法律法规和行业规范，为病员开展必要的医学检查、治疗措施、护理技术、接诊服务、康复设备、救治运输等服务，以救死扶伤为主要目的医疗机构。其服务对象不仅包括有症状的病员和伤员，也包括不能自理或活动受限有医疗护理依赖的老年人，法医评定有医疗护理依赖或病情不稳定需要长期康复经常观察检查的重度病伤员，或有其它特定的情况和人群，如健康人（如孕妇、产妇、新生儿）以及完全健康的人（如来医院进行体格检查或口腔清洁的人）。最初设立时，是供人避难，还备有娱乐节目，使来者舒适，有招待意图。后来，才逐渐成为收容和治疗病人的专门机构。</p>
								</div>
							</div>
							<div class="layui-colla-item">
								<h2 class="layui-colla-title layui-show">医院科室</h2>
								<div class="layui-colla-content  layui-show">

									<div class="layui-collapse" lay-accordion="">

										<div class="layui-collapse" lay-accordion="">
											<div class="layui-colla-item">
												<h2 class="layui-colla-title">针灸科</h2>
												<div class="layui-colla-content">
													<p>针灸科 古代医学分科名。针灸疗法由来已久，唐代始设针科，宋代设针兼灸科，元、明两代均设有针灸科，清朝前期也设针灸科，道光二年（公元1822年）太医院中取消针灸科。</p>
												</div>
											</div>
											<div class="layui-colla-item">
												<h2 class="layui-colla-title">骨科</h2>
												<div class="layui-colla-content">
													<p>骨科是各大医院最常见的科室之一，主要研究骨骼肌肉系统的解剖、生理与病理，运用药物、手术及物理方法保持和发展这一系统的正常形态与功能。</p>
												</div>
											</div>
											<div class="layui-colla-item">
												<h2 class="layui-colla-title">皮肤科</h2>
												<div class="layui-colla-content">
													<p>皮肤科是治疗皮肤疾病的医学分支。也指综合性医院当中诊疗皮肤疾病的科室。在广义上，皮肤科还包含对头发、指（趾）甲疾病的治疗。</p>
												</div>
											</div>
										</div>

										<div class="layui-colla-item">
											<h2 class="layui-colla-title">神经内科</h2>
											<div class="layui-colla-content">
												<p>神经内科是关于神经方面的二级学科。不属于内科概念。主要收治脑血管疾病（脑梗塞、脑出血）、偏头痛、脑部炎症性疾病（脑炎、脑膜炎）、脊髓炎、癫痫、痴呆、代谢病和遗传倾向疾病、三叉神经痛、坐骨神经病、周围神经病及重症肌无力等。</p>
											</div>
										</div>
										<div class="layui-colla-item">
											<h2 class="layui-colla-title">耳鼻喉科</h2>
											<div class="layui-colla-content">
												<p>耳鼻咽喉科原名“五官科”，后经历卫生部改革之后正式命名为“耳鼻咽喉科”耳鼻咽喉科疾病的分类主要从耳朵、鼻子、咽喉这几个部位常发生的一些疾病来分。</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 轮播 -->
						<div class="layui-carousel" id="test1">
							<div carousel-item>
								<div>
									<img src="image/timg.jpg">
								</div>
								<div>
									<img src="image/timg2.jpg">
								</div>
							</div>
						</div>
						<!-- /轮播 -->
					</div>
					<!-- /左部垂直菜单 -->

					<div class="layui-body">
						<!-- 内容主体区域 -->
						<div style="padding: 15px;">
							<!-- 表头收索栏 -->
							<div class="layui-card-header layuiadmin-card-header-auto" lay-filter="app-content-comment">
								<form class="layui-form" lay-filter="bookSearch" action="">
									<div class="layui-form-item">
										<div class="layui-inline">
											<label class="layui-form-label">姓名:</label>
											<div class="layui-input-inline">
												<input type="text" name="name" placeholder="请输入姓名" autocomplete="off" class="layui-input" id="inputName">
											</div>
										</div>

										<div class="layui-inline">
											<label class="layui-form-label">就诊科室</label>
											<div class="layui-input-block">
												<select name="tid" lay-filter="tid" id="tidSel2">
													<option value="-1">--请选择--</option>
												</select>
											</div>
										</div>

										<div class="layui-inline">
											<button class="layui-btn layuiadmin-btn-comm" data-type="reload" lay-submit="" lay-filter="bookBtn2">
												<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
											</button>
										</div>
									</div>
								</form>
							</div>
							<!-- /表头收索栏 -->
							<table class="layui-hide" id="test" lay-filter="test"></table>
						</div>
					</div>

					<div class="layui-footer">
						<!-- 底部固定区域 -->
						医院管理系统
					</div>
				</div>

				<!-- 操作按钮的添加 -->
				<script type="text/html" id="barDemo">
  		<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  		<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">出院</a>
	</script>
				<!-- /操作按钮的添加 -->

				<!-- 开启头部工具栏--新增添加 -->
				<script type="text/html" id="toolbarDemo">
  	<div class="layui-btn-container">
		<button class="layui-btn layui-btn-sm" lay-event="bookAdd">添加病人</button>
  	</div>
	</script>
			</div>
			<!-- /22222222222222222222222 -->


			<div class="layui-tab-item">
				<div class="layui-carousel layui-container" id="jiankang">
					<div carousel-item >
						<div>
							<img alt="" src="image/健康.jpg">
						</div>
						<div>
							<img alt="" src="image/健康2.jpg">
						</div>
						<div>
							<img alt="" src="image/健康3.jpg">
						</div>
					</div>
				</div>
			</div>

			<div class="layui-tab-item">
				<video id="video" autoplay="true" loop="" preload="" muted="" x-webkit-airplay="true" airplay="allow" webkit-playsinline="true"
				 playsinline="true" src="viedo/膳食健康.mp4" class="video1 video" width="100%" height="650px"><video>
			</div>
		</div>
	</div>


	<script src="bower_components/layui/dist/layui.js"></script>
	<script src="hosipoty/main.js"></script>
	<script>
		layui.use('carousel', function() {
			var carousel = layui.carousel;
			//建造实例
			carousel.render({
				elem : '#jiankang',
				width : '1024px' //设置容器宽度
				,
				height: '650px'
				,
				arrow : 'always' //始终显示箭头
			//,anim: 'updown' //切换动画方式
			});
		});
	</script>
</body>
<!-- 弹出层的书籍维护表单 -->
<div style="display: none;" id="editDiv">
	<form class="layui-form" id="editForm" lay-filter="editForm" action="">
		<input type="hidden" name="id">
		<!-- 隐藏的id -->
		<div class="layui-form-item">
			<label class="layui-form-label">姓名</label>
			<div class="layui-input-block">
				<input type="text" name="name" placeholder="请输入姓名 " autocomplete="off" class="layui-input">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">年龄</label>
			<div class="layui-input-block">
				<input type="text" name="age" placeholder="请输入年龄" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">病情</label>
			<div class="layui-input-block">
				<textarea name="descri" placeholder="请描述病人情况" class="layui-textarea"></textarea>
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">科室</label>
			<div class="layui-input-block">
				<select name="tid" lay-filter="tid" id="tidSel">
					<option value="-1">--请选择--</option>
				</select>
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">费用</label>
			<div class="layui-input-block">
				<input type="text" name="price" placeholder="请输入价格 " autocomplete="off" class="layui-input">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">开始日期</label>
			<div class="layui-input-block">
				<input type="text" name="stadate" autocomplete="off" class="layui-input" id="stadateInput">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">结束日期</label>
			<div class="layui-input-block">
				<input type="text" name="enddate" autocomplete="off" class="layui-input" id="enddateInput">
			</div>
		</div>

		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="bookBtn">立即提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>
</div>
<!-- ./书籍修改的表单 -->
</html>
