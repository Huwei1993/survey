<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>添加模板列表</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="assets/css/bs3/dpl.css" rel="stylesheet" type="text/css" />
<link href="assets/css/bs3/bui.css" rel="stylesheet" type="text/css" />
<link href="assets/css/page-min.css" rel="stylesheet" type="text/css" />
<link href="css/newstylecss.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	

</script>
</head>
<!-- 添加模板列表 -->
<body>
	<div style="text-align:center">
		<p>
		<h1>添加模板</h1>
	</div>
	<br>
	<div class="container">
		<!-- 搜索表单 -->
		<div class="row">
			<form id="searchForm" class="form-horizontal span24" action ="module/add_module" method ="post" >
				<div class="row">
					<div class="control-group span8">
						<label class="add_module" data-rules="{max:10}">模板编号：</label>
						<div class="controls">
							<input type="text" class="add_module_input"  name="pid">
						</div>
					</div>
					<div class="control-group span8">
						<label class="control-label">模板类型：</label>
						<div class="controls">
							<input type="text" class="control-text" name="type">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="control-group span8">
						<label class="control-label">是否发布：</label>
						<div class="controls">
							<select name="muse">
								<option value="-1">请选择</option>
								<option value="1">是</option>
								<option value="0">否</option>
							</select>
						</div>
						<div class="control-group span8">
						<label class="control-label">模板说明：</label>
						<div class="controls">
							<input type="text" class="control-text" name="mexplain">
						</div>
					</div>
					</div>
					<div class="control-group span4" style="float:right;">
						<button type="submit"  class="button button-primary">提交</button>
						<button type="reset" class="button" style="margin-left: 15px;">重置</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
	<script type="text/javascript" src="assets/js/bui-min.js"></script>
	<script type="text/javascript" src="assets/js/config-min.js"></script>
</body>
</html>
