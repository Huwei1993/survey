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

<title>My JSP 'look_forms.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="http://g.alicdn.com/bui/bui/1.1.21/css/bs3/dpl.css"
	rel="stylesheet">
<link href="http://g.alicdn.com/bui/bui/1.1.21/css/bs3/bui.css"
	rel="stylesheet">

</head>

<body>
	<div class="row">
		<div class="span24 doc-content">
			<form class="form-panel" action="post">
				<div class="panel-title">
					<span> <label>调查问卷发布日期：</label><input type="text"
						class="calendar calendar-time" />
					</span> <span> <label>调查问卷结束日期：</label><input type="text"
						class="calendar calendar-time"/> 
					</span>
				</div>
				<span> <label> 查询条件</label></span>
				<ul class="panel-content">
					<li><select name="">
							<option>问卷名</option>
							<option>计划学习</option>
							<option>运动会志愿者</option>
	
					</select> <select name="">
							<option>问卷名称</option>
							<option>   </option>
							<option>问卷名称</option>
							<option>问卷名称</option>
							
					</select>
					
					 <span> <label>调查问编辑日期：</label><input type="text" name =""
						class="calendar calendar-time"/> 
					</span>
					 
					<button type="submit" class="button button-primary">查询</button>
					</li>

						
				</ul>
			</form>
		</div>
	</div>
	<div>
	<table cellspacing="2" class="table table-bordered">
          <thead>
            <tr><th colspan="5">
            </th></tr>
            <tr>
              <th width="15"></th>	
              <th>序号</th>
              <th>问卷名称</th>
              <th>编辑者</th>
              <th>创建日期</th>
              <th>调查开始时间</th>
              <th>调查结束时间</th>
              <th>查看报表</th>
             </tr>
          </thead>
          <tbody>
            <tr>
              <td><input type="checkbox"></td>
              <td ></td>
              <td>张三</td>
              <td>张某某</td>
              <td>@mdo</td>
              <td >1</td>
              <td>张三</td>
              <td>张某某</td>
            </tr>
            <tr>
              <td><input type="checkbox"></td>
              <td>1.1</td>
              <td>张某某</td>
              <td>@TwBootstrap</td>
              <td>1.1</td>
              <td>张三</td>
              <td>张某某</td>
              <td>张某某</td>
            </tr>
            <tr>
              <td><input type="checkbox"></td>
              <td>2</td>
              <td>李证明</td>
              <td>@fat</td>
              <td>张某某</td>
              <td>张三</td>
              <td>张某某</td>
              <td>@TwBootstrap</td>	
            </tr>
            <tr>
               <td><input type="checkbox"></td>
              <td>3</td>
              <td>张三</td>
              <td>张某某</td>
              <td>@TwBootstrap</td>
              <td>张三</td>
              <td>张某某</td>
              <td>张某某</td>
              
            </tr>
          </tbody>
        </table>
        
   <div class="demo-content">
    <div class="row">
      <div class="span16">
        <div id="grid">
          
        </div>
      </div>
    </div>
	</div>
	
	<div class="pagination pull-right">
            <ul>
              <li class="disabled"><a href="#">« 上一页</a></li>
              <li class="active"><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">下一页 »</a></li>
            </ul>
          </div>

  <script src="http://g.tbcdn.cn/fi/bui/jquery-1.8.1.min.js"></script>
  <script src="http://g.alicdn.com/bui/seajs/2.3.0/sea.js"></script>
  <script src="http://g.alicdn.com/bui/bui/1.1.21/config.js"></script>
 
<!-- script start --> 
        <script type="text/javascript">
        BUI.use(['bui/calendar','bui/grid','bui/data'],function(Calendar,Grid,Data){
            var datepicker = new Calendar.DatePicker({
              trigger:'.calendar-time',
              /* showTime:true, */
              autoRender : true
            });
            
           /*  BUI.use(['bui/grid','bui/data'],function(Grid,Data){ */
                var Grid = Grid,
              Store = Data.Store,
              columns = [
                {title : '表头1',dataIndex :'a', width:100},
                {id: '123',title : '表头2',dataIndex :'b', width:100},
                {title : '表头3',dataIndex : 'c',width:200}
              ];
     
            /**
             * 自动发送的数据格式：
             *  1. start: 开始记录的起始数，如第 20 条,从0开始
             *  2. limit : 单页多少条记录
             *  3. pageIndex : 第几页，同start参数重复，可以选择其中一个使用
             *
             * 返回的数据格式：
             *  {
             *     "rows" : [{},{}], //数据集合
             *     "results" : 100, //记录总数
             *     "hasError" : false, //是否存在错误
             *     "error" : "" // 仅在 hasError : true 时使用
             *   }
             * 
             */
            var store = new Store({
                url : 'data/grid-data.php',
                autoLoad:true, //自动加载数据
                params : { //配置初始请求的参数
                  a : 'a1',
                  b : 'b1'
                },
                pageSize:3	// 配置分页数目
              }),
              grid = new Grid.Grid({
                render:'#grid',
                columns : columns,
                loadMask: true, //加载数据时显示屏蔽层
                store: store,
                // 底部工具栏
                bbar:{
                    // pagingBar:表明包含分页栏
                    pagingBar:true
                }
              });
     
            grid.render();
         
        });
      </script>
</body>
</html>
