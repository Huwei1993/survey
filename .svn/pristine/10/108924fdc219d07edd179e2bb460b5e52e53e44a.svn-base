<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加问题</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="http://g.alicdn.com/bui/bui/1.1.21/css/bs3/dpl.css" rel="stylesheet">
  	<link href="http://g.alicdn.com/bui/bui/1.1.21/css/bs3/bui.css" rel="stylesheet">	
  </head>
  		<!-- 添加问题  -->
  <body>
 		 
		<div class="demo-content">
  		  <form id="J_Form" action="" class="form-horizontal">
    	   <div class="control-group">
        <label class="control-label">提交的问题</label>
        <div class="controls  control-row-auto">
          <textarea name="" id="" class="control-row4 input-large"  data-rules="{maxlength:50}"></textarea>
        </div><br>
        </div>
      <div>
      <div class="control-group">
        <label class="control-label">答案A </label>
         <div class="controls">
          <input name="sname" type="text" class="input-large" data-rules="{required : true}">
        </div>
       </div>
       <div class="control-group">
        <label class="control-label">答案B</label>
         <div class="controls">
          <input name="sname" type="text" class="input-large" data-rules="{required : true}">
        </div>
       </div>
       <div class="control-group">
        <label class="control-label">答案C </label>
         <div class="controls">
          <input name="sname" type="text" class="input-large" data-rules="{required : true}">
        </div>
       </div>
       <div class="control-group">
        <label class="control-label">答案D </label>
         <div class="controls">
          <input name="sname" type="text" class="input-large" data-rules="{required : true}">
        </div>
       </div>
   		   <div class="demo-content">
		<div id="s1">
		  <input type="hidden" id="hide" value="b" name="hide">
		</div>	
       
       <div class="row actions-bar">       
          <div class="form-actions span13 offset3">
            <button type="submit" class="button button-primary">提交   </button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button type="reset" class="button">重置</button>
          </div>
      </div> 
 	 </div>
      </form>
    </div>


	<script src="http://g.tbcdn.cn/fi/bui/jquery-1.8.1.min.js"></script>
  <script src="http://g.alicdn.com/bui/seajs/2.3.0/sea.js"></script>
  <script src="http://g.alicdn.com/bui/bui/1.1.21/config.js"></script>
 
<!-- script start --> 
    <script type="text/javascript">
      BUI.use(['bui/form','bui/select'],function(Form,select){
      
      new Form.Form({
        srcNode : '#J_Form'
      }).render();
      
      var items = [
                   {text:'选项1',value:'选择题'},
                   {text:'选项2',value:'判断题'},
                   {text:'选项3',value:'简答题'},
                   {text:'选项1',value:'其他'},
                 ],
                 select = new Select.Select({  
                   render:'#s1',
                   valueField:'#hide',
                   items:items
                 });
             select.render();
             select.on('change', function(ev){
               alert(ev.item);
             });
  });  
      
</script>
    	
 		   
  </body>
</html>
