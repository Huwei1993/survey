<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'survey_list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="http://g.alicdn.com/bui/bui/1.1.21/css/bs3/dpl.css"  rel="stylesheet">
	<link href="http://g.alicdn.com/bui/bui/1.1.21/css/bs3/bui.css" rel="stylesheet">
	

  </head>
  
  <body>
  
  
  <div class="demo-content">
    <div class="row">
      <div class="span16">
        <div id="grid">
          
        </div>
      </div>
    </div>
	</div>
  
    <script src="http://g.tbcdn.cn/fi/bui/jquery-1.8.1.min.js"></script>
  <script src="http://g.alicdn.com/bui/seajs/2.3.0/sea.js"></script>
  <script src="http://g.alicdn.com/bui/bui/1.1.21/config.js"></script>
 
<!-- script start --> 
  <script type="text/javascript">
    BUI.use(['bui/grid','bui/data'],function(Grid,Data){ 
                var Grid = Grid,
              Store = Data.Store,
              columns = [
                {title : '表头1',dataIndex :'a', width:100},
                {id: '123',title : '表头2',dataIndex :'b', width:100},
                {title : '表头3',dataIndex : 'c',width:100}
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
                url : 'json/lake.json',
                autoLoad:true, //自动加载数据
                params : { //配置初始请求的参数
                  a : 'a1',
                  b : 'b1',
                  c : 'c1'
                },
                pageSize:3	// 配置分页数目
              }),
              grid = new Grid.Grid({
                render:'#grid',
                columns : columns,
                loadMask: false, //加载数据时显示屏蔽层
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
