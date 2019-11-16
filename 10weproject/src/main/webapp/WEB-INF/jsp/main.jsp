<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>就诊人员信息列表</title>
<link rel="stylesheet" href="bower_components/layui/dist/css/layui.css">
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<!-- <div class="layui-header">
			<div class="layui-logo">就诊人员信息列表</div>
			头部区域（可配合layui已有的水平导航）
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item"><a href="/logout">退出系统</a></li>
			</ul>
		</div> -->
		<ul class="layui-nav layui-bg-green">
			<li class="layui-nav-item"><a href="">墨绿导航</a></li>
			<li class="layui-nav-item layui-this"><a href="">产品</a></li>
			<li class="layui-nav-item"><a href="">大数据</a></li>
			<li class="layui-nav-item"><a href="javascript:;">解决方案</a>
				<dl class="layui-nav-child">
					<dd>
						<a href="">移动模块</a>
					</dd>
					<dd>
						<a href="">后台模版</a>
					</dd>
					<dd>
						<a href="">电商平台</a>
					</dd>
				</dl></li>
			<li class="layui-nav-item"><a href="">社区</a></li>
		</ul>

		<!-- 左部垂直菜单 -->
		<div class="layui-side layui-bg-black"></div>
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
			© layui.com - 底部固定区域
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
	<!-- /开启头部工具栏--新增添加 -->

	<script src="bower_components/layui/dist/layui.js"></script>
	<script>
		layui.use([ 'table', 'form' ], function() {
			var table = layui.table;
			layui.$.post("subjects/findAll", function(data) {
				for (var i = 0; i < data.length; i++) {
					var op = new Option(data[i].name, data[i].id);
					layui.$("#tidSel").append(op);
				}
				;
				layui.form.render("select");
			});

			//分页查询功能
			layui.form.on('submit(bookBtn2)', function(data) {
				//formSubmit(data);
				table.reload('test', {
					url : '/patient/lists',
					where : data.field
				//输出url里的所有内容
				//设定异步数据接口的额外参数
				//,height: 300
				});
				return false;//返回 false 采用 Ajax 提交
			});
			//./分页查询

			//数据类型
			layui.$.post("subjects/findAll", function(data) {
				for (var i = 0; i < data.length; i++) {
					var op = new Option(data[i].name, data[i].id);
					layui.$("#tidSel2").append(op);
				}
				;
				layui.form.render("select");
			});

			table.render({
				elem : '#test',
				url : 'patient/lists',
				toolbar : '#toolbarDemo',
				title : '用户数据表',
				totalRow : true,
				cols : [ [ {
					type : 'checkbox',
					fixed : 'left'
				}, {
					field : 'id',
					title : '编号',
					width : 80,
					fixed : 'left',
					unresize : true,
					sort : true,
				}, {
					field : 'name',
					title : '姓名',
					width : 80,
				}, {
					field : 'age',
					title : '年龄',
					width : 80,
					//sort : true,
					totalRow : true
				}, {
					field : 'tid',
					title : '类型',
					width : 80,
					sort : true
				}, {
					field : 'price',
					title : '价格',
					width : 100,
					sort : true,
					totalRow : true
				}, {
					field : 'descri',
					title : '病情描述',
					width : 200
				}, {
					field : 'stadate',
					title : '就诊日期',
					width : 150
				}, {
					field : 'enddate',
					title : '最新日期',
					width : 150
				}, {
					fixed : 'right',
					title : '操作',
					toolbar : '#barDemo',
					width : 150
				} ] ],
				page : true,
				parseData : function(res) { //res 即为原始返回的数据
					return {
						"code" : 0, //解析接口状态
						//"msg": res.message, //解析提示文本
						"count" : res.total, //解析数据长度
						"data" : res.records
					//解析数据列表
					};
				},
				limits : [ 1, 2, 4, 6 ],
				limit : 4,
				size : 'lg' //大尺寸的表格
			});

			//头工具栏事件
			table.on('toolbar(test)', function(obj) {
				var checkStatus = table.checkStatus(obj.config.id);
				switch (obj.event) {
				case 'getCheckData':
					var data = checkStatus.data;
					layer.alert(JSON.stringify(data));
					break;
				case 'getCheckLength':
					var data = checkStatus.data;
					layer.msg('选中了：' + data.length + ' 个');
					break;
				case 'isAll':
					layer.msg(checkStatus.isAll ? '全选' : '未全选');
					break;
				case 'bookAdd':
					openPatientForm({
						"id" : "",
						"name" : "",
						"age" : "",
						"tid" : -1,
						"descri" : "",
						"price" : "",
						"stadate" : "",
						"enddate" : ""
					});
					break;

				//自定义头工具栏右侧图标 - 提示
				case 'LAYTABLE_TIPS':
					layer.alert('这是工具栏右侧自定义的一个图标按钮');
					break;
				}
				;
				//添加图书页面应该需要重载表单
				layui.form.on('submit(bookSubmit)', function(data) {
					//点击提交按钮后提交表单
					layui.$.post("book/update", data.field, function(res) {
						if (res.code == 0) {
							layer.closeAll();//疯狂模式，关闭所有的弹出层
							//添加后更新表格
							table.reload('test', {
								url : 'book/lists',
								where : {}
							//设定异步数据接口的额外参数
							//,height: 300
							});
						} else {

						}
					})
					return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
				});
			});

			//监听行工具事件
			table.on('tool(test)', function(obj) {
				var data = obj.data;
				//console.log(obj)
				if (obj.event === 'del') {
					layer.confirm('病人是否已经出院', function(index) {
						/*  obj.del();
						 layer.close(index); */
						layui.$.post("patient/delete", {
							id : data.id
						}, function(resultMap) {
							if (resultMap.code == 1) {//拿到controller里的code判断是否删除成功
								//删除成功要关闭提示框并且需要刷新表格内容
								layer.close(index);//关闭层
								layer.msg(resultMap.msg, {//删除成功后提示成功的消息
									icon : 1,
									time : 2000
								//2秒关闭（如果不配置，默认是3秒）
								});
								//当删除成功后要刷新图书列表
								table.reload('test', {
									page : {
										curr : 1
									//重新从第 1 页开始
									}
								}); //只重载数据
							} else {
								layer.msg(resultMap.msg, {
									icon : 1,
									time : 2000
								//消息持续时间
								});
								//删除失败后也需要重新加载图书列表
								table.reload("test");
								layer.close(index);//关闭层
							}
						});
					});
				} else if (obj.event === 'edit') {
					openPatientForm(data);//调用打开弹出层
				}
				;
			});

			//监听提交更新病人信息表单的事件
			function getSubmit(data) {
				layui.form.on('submit(bookBtn)', function(data) {
					//Ajax方式提交
					layui.$.post("patient/update", data.field,
							function(result) {
								if (result.code == 1) {
									layer.closeAll('page');
									layer.msg(result.msg);
									table.reload('test', {
										page : {
											curr : 1
										//重新从第 1 页开始
										}
									}); //只重载数据

								} else {
									layer.msg(result.msg);
								}
							})

					return false;
				});
			}
			;
			function openPatientForm(data) {
				layer.open({
					type : 1,
					content : layui.$('#editDiv'),
					// 这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
					area : [ '50%', '70%' ],
					success : function(layero, index) {// 成功后回调函数
						layui.form.val('editForm', data);
						// 使用ajax获取书籍类型
						getSubmit(data);// 在表单成功打开后调用注册提交方法
					}
				});
			}
			;

		});
		//日历插件
		layui.use('laydate', function() {
			var laydate = layui.laydate;

			laydate.render({
				elem : '#stadateInput'
			});
		});
		layui.use('laydate', function() {
			var laydate = layui.laydate;

			laydate.render({
				elem : '#enddateInput'
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
