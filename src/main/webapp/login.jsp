<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
	<!-- <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 -->
	 <title>问卷调查登录</title>
  <!--  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <link href="assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
   <link href="assets/css/bui-min.css" rel="stylesheet" type="text/css" />
   <link href="assets/css/main-min.css" rel="stylesheet" type="text/css" /> -->

	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
		 <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
		<script src="assets/js/cufon-yui.js" type="text/javascript"></script>
		<script src="assets/js/ChunkFive_400.font.js" type="text/javascript"></script>
  </head>
  	 <!-- github  https://github.com/Huwei1993/-.git -->
 <body>
		<div class="wrapper">
			<h3>调查问卷注册登录</h3>
			<div class="content">
				<div id="form_wrapper" class="form_wrapper">
					
					<form class="login active">
						<h3>登录</h3>
						<div>
							<label>用户名/邮箱号：</label>
							<input type="text" />
							<span class="error">This is an error</span>
						</div>
						<div>
							<label>密码 <a href="forgot_password.jsp" rel="forgot_password" class="forgot linkform">忘记密码?</a></label>
							<input type="password" />
							<span class="error">This is an error</span>
						</div>
						<div class="bottom">
							<div class="remember"><input type="checkbox" /><span>记住密码</span></div>
							 <input type="submit"  value="登录"></input>
							<a href="register.jsp" rel="register" class="linkform">没有账号？点击注册</a>
							<div class="clear"></div>
						</div>
					</form>
					
				</div>
				<div class="clear"></div>
			</div>
			<a class="back" href="http://tympanus.net/codrops/2011/01/06/animated-form-switching/">back to the Codrops tutorial</a>
		</div>
		<a href ="question_list.jsp">问题列表</a><br>
		<a href ="survey_list.jsp">问题列表</a>
		<!-- The JavaScript -->
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
		<script type="text/javascript">
			$(function() {
					//the form wrapper (includes all forms)
				var $form_wrapper	= $('#form_wrapper'),
					//the current form is the one with class active
					$currentForm	= $form_wrapper.children('form.active'),
					//the change form links
					$linkform		= $form_wrapper.find('.linkform');
						
				//get width and height of each form and store them for later						
				$form_wrapper.children('form').each(function(i){
					var $theForm	= $(this);
					//solve the inline display none problem when using fadeIn fadeOut
					if(!$theForm.hasClass('active'))
						$theForm.hide();
					$theForm.data({
						width	: $theForm.width(),
						height	: $theForm.height()
					});
				});
				
				//set width and height of wrapper (same of current form)
				setWrapperWidth();
				
				/*
				clicking a link (change form event) in the form
				makes the current form hide.
				The wrapper animates its width and height to the 
				width and height of the new current form.
				After the animation, the new form is shown
				*/
				$linkform.bind('click',function(e){
					var $link	= $(this);
					var target	= $link.attr('rel');
					$currentForm.fadeOut(400,function(){
						//remove class active from current form
						$currentForm.removeClass('active');
						//new current form
						$currentForm= $form_wrapper.children('form.'+target);
						//animate the wrapper
						$form_wrapper.stop()
									 .animate({
										width	: $currentForm.data('width') + 'px',
										height	: $currentForm.data('height') + 'px'
									 },500,function(){
										//new form gets class active
										$currentForm.addClass('active');
										//show the new form
										$currentForm.fadeIn(400);
									 });
					});
					e.preventDefault();
				});
				
				function setWrapperWidth(){
					$form_wrapper.css({
						width	: $currentForm.data('width') + 'px',
						height	: $currentForm.data('height') + 'px'
					});
				}
				
				/*
				for the demo we disabled the submit buttons
				if you submit the form, you need to check the 
				which form was submited, and give the class active 
				to the form you want to show
				*/
				$form_wrapper.find('input[type="submit"]')
							 .click(function(e){
								e.preventDefault();
							 });	
			});
        </script>
    </body>

</html>
