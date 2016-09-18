<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'forgot_password.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="assets/css/style.css" />
	<!-- BUI CSS 样式 -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  	 <link href="assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
 	 <link href="assets/css/bui-min.css" rel="stylesheet" type="text/css" />
   <link href="assets/css/main-min.css" rel="stylesheet" type="text/css" />
	
	<!-- Bui js -->
	<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
  <script type="text/javascript" src="assets/js/bui.js"></script>
  <script type="text/javascript" src="assets/js/config.js"></script>
	
	
	<!-- 模板js -->
	<script src="assets/js/cufon-yui.js" type="text/javascript"></script>
	<script src="assets/js/ChunkFive_400.font.js" type="text/javascript"></script>

  </head>
  
  <body>
   <div class="wrapper">
			<h3>找回密码</h3>
			<div class="content">
				<div id="form_wrapper" class="form_wrapper">
				
   				<form  id ="J_Form" class="forgot_password active">
						<h3>忘记密码</h3>
						<div>
							<label>邮箱号：</label>
							<input  type="text" name="a" data-rules="{required:true}" />
							<span class="error">This is an error</span>
						</div>
						<div class="bottom">
							<input type="submit" value="提交"></input>
							<a href="login.jsp" rel="login" class="linkform">记起密码了？点击登录</a>
							<a href="register.jsp" rel="register" class="linkform">没有账号？点击注册</a>
							<div class="clear"></div>
						</div>
					</form>
					
			</div>
		</div>
	</div>	
	
	<script type="text/javascript" src="assets/js/config-min.js"></script>
 	 <script type="text/javascript">
 	BUI.use('bui/form',function (Form) {
 	    new Form.Form({
 	      srcNode : '#J_Form'
 	    }).render();
 	  });
  </script>
		
  </body>
</html>
