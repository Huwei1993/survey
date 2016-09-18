<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>模板列表</title>
<!-- 此文件为了显示Demo样式，项目中不需要引入 -->

 
  <link href="assets/css/bs3/dpl.css" rel="stylesheet">
  <link href="assets/css/bs3/bui.css" rel="stylesheet">
 
</head>
<body>
  <div class="demo-content">
    <div class="row">
      <button id="btn" class="button">destroy</button>
      <div class="span16">
        <div id="grid">
          
        </div>
      </div>
    </div>
    
 
  <script src="assets/js/jquery-1.8.1.min.js"></script>
  <script src="assets/js/sea.js"></script>
   <script src="assets/js/common/config.js"></script>
  <script src="http://g.alicdn.com/bui/bui/1.1.21/config.js"></script>
    <script type="text/javascript">
        BUI.use(['bui/grid','bui/data'],function(Grid,Data){
            var Grid = Grid,
          Store = Data.Store,
          enumObj = {"1" : "是","2" : "否"},
          columns = [
			{title : '模块Id', dataIndex :'id',editor : {xtype : 'number',rules : {required : true}}},
            {title : '模块类型',dataIndex :'type',editor : {xtype : 'text'}}, //editor中的定义等用于 BUI.Form.Field.Text的定义
            
            {title : '是否添加',dataIndex : 'muse', editor : {xtype :'select',items : enumObj},renderer : Grid.Format.enumRenderer(enumObj)},
            {title : '模块说明',dataIndex :'mexplain',editor : {xtype : 'text'}}, //editor中的定义等用于 BUI.Form.Field.Text的定义
            {title : '操作',dataIndex:'e',renderer : function(){
              return '<span class="grid-command btn-edit">编辑</span>'
            }}
          ];
          data = [{a:"${list[0].id}",b:"${list[1].type}",c:"${list[2].muse}",d:"${list[3].mexplain}"}];
 
        var editing = new Grid.Plugins.RowEditing({
          triggerCls : 'btn-edit',
          triggerSelected : false
 
        }),
          store = new Store({
        	 /*  url : data, */
        	 
            autoLoad:true, // 自动加载数据
            params : { //配置初始请求的参数
                a : 'a1',
                b : 'b1',
                c : 'c1',
                d : 'd1'
              },
              pageSize:3	// 配置分页数目
          }),
          grid = new Grid.Grid({
            render:'#grid',
            columns : columns,
            width : 700,
            forceFit : true,
            tbar:{ //添加、删除
                items : [{
                  btnCls : 'button button-small',
                  text : '<i class="icon-plus"></i>添加',
                  listeners : {
                    'click' : addFunction
                  }
                },
                {
                  btnCls : 'button button-small',
                  text : '<i class="icon-remove"></i>删除',
                  listeners : {
                    'click' : delFunction
                  }
                }]
            },
            plugins : [editing,Grid.Plugins.CheckSelection],
            store : store,
            bbar:{
                // pagingBar:表明包含分页栏
                pagingBar:true
            }
          });
 
        grid.render();
 
        editing.on('editorshow',function(ev){
          var editor = editing.get('curEditor');
          editor.set('errorAlign',{
            points :['br','tr'] ,
            offset: [0, 10]
          });
        });
 
        //添加记录
        function addFunction(){
          var newData = {b : 0};
          store.addAt(newData,0);
          editing.edit(newData,'a'); //添加记录后，直接编辑
        }
        //删除选中的记录
        function delFunction(){
          var selections = grid.getSelection();
          store.remove(selections);
        }          
      });
    </script>
<!-- script end -->
  </div>
</body>
</html>

