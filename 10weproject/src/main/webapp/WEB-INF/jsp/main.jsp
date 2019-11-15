<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
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
				<div class="layui-card-header layuiadmin-card-header-auto"
					lay-filter="app-content-comment">
					<form class="layui-form" lay-filter="bookSearch" action="">
						<div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">姓名:</label>
								<div class="layui-input-inline">
									<input type="text" name="name" placeholder="请输入姓名"
										autocomplete="off" class="layui-input" id="inputName">
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
								<button class="layui-btn layuiadmin-btn-comm" data-type="reload"
									lay-submit="" lay-filter="bookBtn2">
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

	<!-- 弹出层的书籍维护表单 -->
	<div style="display: none;" id="editDiv">
		<form class="layui-form" lay-filter="editForm" action="">
			<input type="hidden" name="id"> <!-- 隐藏的id -->
			<div class="layui-form-item">
				<label class="layui-form-label">姓名</label>
				<div class="layui-input-block">
					<input type="text" name="name" placeholder="请输入书名 "
						autocomplete="off" class="layui-input">
				</div>
			</div>


			<div class="layui-form-item">
				<label class="layui-form-label">作者</label>
				<div class="layui-input-block">
					<input type="text" name="author" placeholder="请输入作者"
						autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item">
				<label class="layui-form-label">类型</label>
				<div class="layui-input-block">
					<select name="tid" lay-filter="tid" id="tidSel">
						<option value="-1">--请选择--</option>
					</select>
				</div>
			</div>

			<div class="layui-form-item">
				<label class="layui-form-label">价格</label>
				<div class="layui-input-block">
					<input type="text" name="price" placeholder="请输入价格 "
						autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">描述</label>
				<div class="layui-input-block">
					<textarea name="descri" placeholder="请描述书籍内容"
						class="layui-textarea"></textarea>
				</div>
			</div>

			<div class="layui-form-item">
				<label class="layui-form-label">出版时间</label>
				<div class="layui-input-block">
					<input type="text" name="pubdate" placeholder="请输入出版时间 "
						autocomplete="off" class="layui-input" id="pubdateInput">
				</div>
			</div>

			<div class="layui-form-item">
				<label class="layui-form-label">封面</label>
				<div class="layui-input-block">
					<button type="button" class="layui-btn" id="photoxInput">
						<i class="layui-icon">&#xe67c;</i>上传图片
					</button>
					<!-- 用来进行封面预览 -->
					<img alt="" id="previewImg" src="">
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
	<!-- /书籍修改的表单 -->

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
			/* 	layui.form.on('submit(book-front-search)', function(data) {
					//formSubmit(data);
					table.reload('test', {
						url : '/book/list',
						where : data.field
					//设定异步数据接口的额外参数
					//,height: 300
					});
					return false;//返回 false 采用 Ajax 提交
				}); */

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
					edit : 'text'
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
					edit : 'text',
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
					layer.open({
						type : 1,
						title : "图书添加",
						content : layui.$("#EditBookFrom"),
						area : [ '60%', '85%' ],
						success : function(layero, index) {//成功弹出后执行数据回填以及以后的操作
							layui.form.val("bookEdit", {
								id : "",
								name : "",
								author : "",
								tid : -1,
								price : "",
								descri : " ",
								photo : "",
								pubdate : ""
							});
							layui.$("#preViewImg").attr("src", "");
							//已从数据库中查询到所有的书籍类型,之后添加到select的option选项中

						}
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
					layer.confirm('真的删除行么', function(index) {
						/*  obj.del();
						 layer.close(index); */
						layui.$.post("book/delete", {
							id : data.id
						}, function(map) {
							if (map.code == 1) {//拿到controller里的code判断是否删除成功
								//删除成功要关闭提示框并且需要刷新表格内容
								layer.close(index);//关闭层
								layer.msg(map.message, {//删除成功后提示成功的消息
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
								layer.msg(map.message, {
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
					//执行修改操作
					//第一步是点击修改按钮后弹出一个内容框
					layer.open({
						type : 1,
						title : "图书修改",
						content : layui.$("#EditBookFrom"),
						area : [ '60%', '85%' ],
						success : function(layero, index) {//成功弹出后执行数据回填以及以后的操作
							//图片预览功能,如果有图片,点击修改按钮时需要在修改页面把图片显示出来
							if (data.photo) {
								layui.$("#preViewImg").attr("src",
										"upload/" + data.photo);
							}
							//bookEdit 即 class="layui-form" 所在元素属性 lay-filter="bookEdit"对应的值,即修改图书表单的form属性
							layui.form.val("bookEdit", data);//数据回填，但不包括书籍类型
						}
					});

				}
				//监听表单提交的事件
				layui.form.on('submit(bookSubmit)', function(data) {
					//点击提交按钮后提交表单
					layui.$.post("book/update", data.field, function(res) {
						if (res.code == 0) {
							layer.closeAll();//疯狂模式，关闭所有的弹出层
							//并且在更新后需要更新表格的这一列
							obj.update(data.field);
						} else {
						}
					})
					return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
				});
			});

		});
	</script>

</body>
</html>
