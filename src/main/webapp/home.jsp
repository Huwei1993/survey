<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员后台页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!-- <link rel="stylesheet" type="text/css" href="styles.css"> -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <link href="assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
   <link href="assets/css/bui-min.css" rel="stylesheet" type="text/css" />
   <link href="assets/css/main-min.css" rel="stylesheet" type="text/css" />

  </head>
    <!-- 后台管理界面首页 -->
  <body>
 <!--  系统头部 -->
 <div>
 <div class="header">
    <div class="dl-title"><span class="">调查问卷</span></div>	
   	<div class="dl-log">欢迎您，<span class="dl-log-user">XXX</span>
       	<a href="###" title="退出系统" class="dl-log-quit">[退出]</a>
       	<a href="login.jsp" title="登录" class="dl-log-quit">普通用户登录</a>
       	
 	</div>
 </div>
 
 <!-- 系统页面的征文 -->
 
 <div class= "content">
 		<div class = "dl-main-nav">
 			<div class = "dl-inform">
 				<div class ="dl-infrom-title"></div>
 			</div>
 		
 		<!-- 頂部導航 -->
 			 <ul id="J_Nav"  class="nav-list ks-clear">
		        <li class="nav-item dl-selected"><div class="nav-item-inner nav-storage">首页</div></li>
		        <li class="nav-item dl-selected"><div class="nav-item-inner nav-inventory">选择题</div></li>
		        <li class="nav-item dl-selected"><div class="nav-item-inner nav-inventory">详情页</div></li>
		        <li class="nav-item dl-selected"><div class="nav-item-inner nav-inventory">选择题</div></li>
		        <li class="nav-item dl-selected"><div class="nav-item-inner nav-inventory">详情页</div></li>
		        
		      </ul>
		</div>
		<ul id="J_NavContent" class="dl-tab-conten">
		
		</ul> 		
 </div>
 
<!--  系统页面的尾部信息 -->
  
 
 <!-- script信息 -->
   	<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
 	<script type="text/javascript" src="assets/js/bui-min.js"></script>
    <script type="text/javascript" src="assets/js/config-min.js"></script>
  <script  type="text/javascript">	
  BUI.use('common/main', function() {
		// 菜单模块，按顺序对应导航菜单
		var config = [{ /*首页展示*/
			id : 'form',
			homePage : 'index',
			
			// 二级菜单的集合
			menu : [{
				text : '问卷管理',
				// 三级菜单集合
				items : [
					{id:'index', text:'问卷列表', href:'survey_list.jsp', closeable : false},
					{id:'index2', text:'添加问卷', href:'add_survey_list.jsp', closeable : true},
					{id:'index3', text:'问题列表', href:'question_list.jsp', closeable : true},
					{id:'index4', text:'添加问题', href:'add_question.jsp', closeable : true},
					
				]
			}, {
				text : '模块管理',
				// 三级菜单集合
				items : [
					{id:'index-1-1', text:'模板列表', href:'http://localhost:8080/survey/module/turn'},
					{id:'index-1-2', text:'添加模板', href:'add_module_list.jsp'}
				]
			}, {
				text : '统计管理',
				// 三级菜单集合
				items : [
					{id:'index-2-1', text:'查看报表',  href:'look_forms.jsp'},
					
				]
			},{
				text : '系统管理',
				// 三级菜单集合
				items : [
					{id:'index-3-1', text:'用户管理', href:'user_manager.jsp'},
					{id:'index-3-2', text:'类别管理', href:'class_manager.jsp'},
					{id:'index-3-3', text:'修改密码', href:'change_password.jsp'}
				]
			}
			
			]
		}, { /*用户管理系统*/
			id : 'mysys',
			menu : []
		}, { /*图表模块*/

		}];

		// 初始化主页菜单
		new PageUtil.MainPage({
			modulesConfig : config
		});
	});

</script>
  

  
  </body>
</html>
