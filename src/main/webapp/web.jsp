<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="zh-cn" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>问卷调查</title>
<meta name="description"
	content="A Collection of Page Transitions with CSS Animations" />
<meta name="keywords"
	content="page transition, css animation, website, effect, css3, jquery" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="css/default.css" />
<link rel="stylesheet" type="text/css" href="css/multilevelmenu.css" />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<link rel="stylesheet" type="text/css" href="css/animations.css" />
<script src="js/modernizr.custom.js"></script>
<script src="css/init.css"></script>

<script src="assets/js/jquery-1.8.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/newstylecss.css" />
<!-- <link rel="stylesheet" href="http://dreamsky.github.io/main/blog/common/init.css"> -->
<!-- <script src="http://dreamsky.github.io/main/blog/common/jquery.min.js"></script> -->
<!-- <script src="http://dreamsky.github.io/main/blog/common/init.js"></script> -->

<script type="text/javascript">
	var i = 1;
	function btu(next_station) {
		var id1 = document.getElementById(next_station);
		
	if(i>=1 && i<=10){
		id1.innerHTML="下一题";
		id1.style.visibility="block";
	}else{
		id1.style.display="none";
		
	}
		i++;
	}
</script>

</head>
<body>

	<div class="pt-triggers">
		<div class="user_name">
			<a href="login.jsp"> 用户登录</a>
		</div>
		<button id="next_station" class="pt-touch-button"
			onclick="btu('next_station')">点击开始进行调查</button>
			
		<div id="dl-menu" class="dl-menuwrapper">
		<div class="footer-banner"
				style="position:absolute;bottom:-350px;left:-200px;width:728px; margin:30px auto"></div>
		</div>
		<!-- /dl-menu-wrapper-->
	</div>
	<!-- /triggers -->

	<div id="pt-main" class="pt-perspective">
		<div class="pt-page pt-page-1">
			<h1>
				<span>A servey of</span>满意度问卷调查
			</h1>
			<br>
			<div style="text-align:center">选择题</div>

			<div style="text" class="clssweb">
				<h3>声明:</h3>
			</div>
			<br>
			<div style="text" class="clssweb2">
				您好：<br>
				<br>
				&nbsp;&nbsp;&nbsp;&nbsp;非常感谢您在百忙之中填写问卷，请您根据自己的实际感受如实填写，本均采用可选匿名形式， <br>所有数据仅供本小组使用，谢谢您的配合(本问卷共10题)！！<br>
				<br>&nbsp;&nbsp;&nbsp;&nbsp;祝您身体健康，工作胜利!!
			</div>
		</div>

		<div class="pt-page pt-page-11">
			<h1>
				<span>A servey of</span>满意度问卷调查
			</h1>

			${list1[0].question}
			<div style="text" class="clssweb">
				<h3>问题一：</h3>
			</div>
			<br>
			<form action="problem/surveyId" method="get" class="clssweb2">
				${list1.question}<br/>
				<br /> <label><input name="Que1" type="radio" value="a" />${list1[0].aanswer}</label>
				<label><input name="Que1" type="radio" value="b" />${list1.banswer}
				</label> <label><input name="Que1" type="radio" value="c" />${list1.canswer}</label>
				<label><input name="Que1" type="radio" value="d" />${list1.danswer}
				</label>
			</form>
		</div>

		<div class="pt-page pt-page-2">
			<h1>
				<span>A servey of</span>满意度问卷调查
			</h1>
			<div style="text" class="clssweb">
				<h3>问题二：</h3>
			</div>
			<br>
			<form action="" method="get" class="clssweb2">
				${list[1].question}<br />
				<br /> <label><input name="Que2" type="radio" value="a" />${list[1].aanswer}</label>
				<label><input name="Que2" type="radio" value="b" />${list[1].banswer}
				</label> <label><input name="Que2" type="radio" value="c" />${list[1].canswer}</label>
				<label><input name="Que2" type="radio" value="d" />${list[1].danswer}</label>
			</form>
		</div>


		<div class="pt-page pt-page-3">
			<h1>
				<span>A servey of</span>满意度问卷调查
			</h1>
			<div style="text" class="clssweb">
				<h3>问题三：</h3>
			</div>
			<br>
			<form action="" method="get" class="clssweb2">
				${list[2].question}<br />
				<br /> <label><input name="Que3" type="radio" value="a" />${list[2].aanswer}</label>
				<label><input name="Que3" type="radio" value="b" />${list[2].banswer}
				</label> <label><input name="Que3" type="radio" value="c" />${list[2].canswer}</label>
				<label><input name="Que3" type="radio" value="d" />${list[2].danswer}
				</label>
			</form>
		</div>


		<div class="pt-page pt-page-4">
			<h1>
				<span>A servey of</span>满意度问卷调查
			</h1>
			<div style="text" class="clssweb">
				<h3>问题四：</h3>
			</div>
			<br>
			<form action="" method="get" class="clssweb2">
				${list[3].question}<br />
				<br /> <label><input name="Que4" type="radio" value="a" />${list[3].aanswer}</label>
				<label><input name="Que4" type="radio" value="b" />${list[3].banswer}
				</label> <label><input name="Que4" type="radio" value="c" />${list[3].canswer}</label>
				<label><input name="Que4" type="radio" value="d" />${list[3].danswer}
				</label>
			</form>
		</div>


		<div class="pt-page pt-page-5">
			<h1>
				<span>A servey of</span>满意度问卷调查
			</h1>
			<div style="text" class="clssweb">
				<h3>问题五：</h3>
			</div>
			<br>
			<form action="" method="get" class="clssweb2">
				${problem}<br />
				<br /> <label><input name="Que5" type="radio" value="a" />${questionA}</label>
				<label><input name="Que5" type="radio" value="b" />${questionB}
				</label> <label><input name="Que5" type="radio" value="c" />${questionC}</label>
				<label><input name="Que5" type="radio" value="d" />${questionD}
				</label>
			</form>
		</div>


		<div class="pt-page pt-page-6">
			<h1>
				<span>A servey of</span>满意度问卷调查
			</h1>
			<div style="text" class="clssweb">
				<h3>问题六：</h3>
			</div>
			<br>
			<form action="" method="get" class="clssweb2">
				${problem}<br />
				<br /> <label><input name="Que6" type="radio" value="a" />${questionA}</label>
				<label><input name="Que6" type="radio" value="b" />${questionB}
				</label> <label><input name="Que6" type="radio" value="c" />${questionC}</label>
				<label><input name="Que6" type="radio" value="d" />${questionD}
				</label>
			</form>
		</div>

		<
		<div class="pt-page pt-page-7">
			<h1>
				<span>A servey of</span>满意度问卷调查
			</h1>
			<div style="text" class="clssweb">
				<h3>问题七：</h3>
			</div>
			<br>
			<form action="" method="get" class="clssweb2">
				${problem}<br />
				<br /> <label><input name="Que7" type="radio" value="a" />${questionA}</label>
				<label><input name="Que7" type="radio" value="b" />${questionB}
				</label> <label><input name="Que7" type="radio" value="c" />${questionC}</label>
				<label><input name="Que7" type="radio" value="d" />${questionD}
				</label>
			</form>
		</div>

		<div class="pt-page pt-page-8">
			<h1>
				<span>A servey of</span>满意度问卷调查
			</h1>
			<div style="text" class="clssweb">
				<h3>问题八：</h3>
			</div>
			<br>
			<form action="" method="get" class="clssweb2">
				${problem}<br />
				<br /> <label><input name="Que8" type="radio" value="a" />${questionA}</label>
				<label><input name="Que8" type="radio" value="b" />${questionB}
				</label> <label><input name="Que8" type="radio" value="c" />${questionC}</label>
				<label><input name="Que8" type="radio" value="d" />${questionD}
				</label>
			</form>

		</div>
		<div class="pt-page pt-page-9">
			<h1>
				<span>A servey of</span>满意度问卷调查
			</h1>

			<div style="text" class="clssweb">
				<h3>问题九：</h3>
			</div>
			<br>
			<form action="" method="get" class="clssweb2">
				${problem}<br />
				<br /> <label><input name="Que9" type="radio" value="a" />${questionA}</label>
				<label><input name="Que9" type="radio" value="b" />${questionB}
				</label> <label><input name="Que9" type="radio" value="c" />${questionC}</label>
				<label><input name="Que9" type="radio" value="d" />${questionD}
				</label>
			</form>
		</div>
		<div class="pt-page pt-page-10">
			<h1>
				<span>A servey of</span>满意度问卷调查
			</h1>
			<div style="text" class="clssweb">
				<h3>问题十：</h3>
			</div>
			<br>
			<div style="text" class="clssweb2">${ada}</div>
		</div>

	</div>

	<div class="pt-message">
		<p>亲，你的浏览器不支持 CSS 动画，请使用 Chrome,Firefox,Safari 等浏览器浏览.</p>
	</div>
	<script src="js/jquery.dlmenu.js"></script>
	<script src="js/pagetransitions.js"></script>
</body>
</html>

