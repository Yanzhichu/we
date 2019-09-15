
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
		<div class="layui-header">
			<div class="layui-logo">就诊人员信息列表</div>
			<!-- 头部区域（可配合layui已有的水平导航） -->
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item"><a href="">控制台</a></li>
				<li class="layui-nav-item"><a href="">商品管理</a></li>
				<li class="layui-nav-item"><a href="">用户</a></li>
				<li class="layui-nav-item"><a href="javascript:;">其它系统</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="">邮件管理</a>
						</dd>
						<dd>
							<a href="">消息管理</a>
						</dd>
						<dd>
							<a href="">授权管理</a>
						</dd>
					</dl></li>
			</ul>
			<ul class="layui-nav layui-layout-right">

				</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="">基本资料</a>
						</dd>
						<dd>
							<a href="">安全设置</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item"><a href="logout">退了</a></li>
			</ul>
		</div>

		<!-- 左部垂直菜单 -->
		<div class="layui-side layui-bg-black">
			
			
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
									<input type="text" name="name" placeholder="请输入姓名" autocomplete="off" class="layui-input">
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

	<!-- 弹出层的书籍维护表单 -->
	<div style="display: none;" id="editDiv">

		<form class="layui-form" lay-filter="editForm" action="">
			<input type="hidden" name="id"> <input type="hidden" name="photo" id="photoInput">
			<div class="layui-form-item">
				<label class="layui-form-label">姓名</label>
				<div class="layui-input-block">
					<input type="text" name="name" placeholder="请输入书名 " autocomplete="off" class="layui-input">
				</div>
			</div>


			<div class="layui-form-item">
				<label class="layui-form-label">作者</label>
				<div class="layui-input-block">
					<input type="text" name="author" placeholder="请输入作者" autocomplete="off" class="layui-input">
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
					<input type="text" name="price" placeholder="请输入价格 " autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">描述</label>
				<div class="layui-input-block">
					<textarea name="descri" placeholder="请描述书籍内容" class="layui-textarea"></textarea>
				</div>
			</div>

			<div class="layui-form-item">
				<label class="layui-form-label">出版时间</label>
				<div class="layui-input-block">
					<input type="text" name="pubdate" placeholder="请输入出版时间 " autocomplete="off" class="layui-input" id="pubdateInput">
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
    	<button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
    	<button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
    	<button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
		<button class="layui-btn layui-btn-sm" lay-event="bookAdd">添加</button>
  	</div>
	</script>
	<!-- /开启头部工具栏--新增添加 -->

	<script src="bower_components/layui/dist/layui.js"></script>

</body>
</html>
