<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>用户列表</title>
<link href="../assets/css/bs3/dpl.css" rel="stylesheet" type="text/css" />
<link href="../assets/css/bs3/bui.css" rel="stylesheet" type="text/css" />
<link href="../assets/css/page-min.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="container">
		<!-- 搜索表单 -->
		<div class="row">
			<form id="searchForm" class="form-horizontal span24">
				<div class="row">
					<div class="control-group span8">
						<label class="control-label">模板编号：</label>
						<div class="controls">
							<input type="text" class="control-text" name="id">
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
					</div>

					<div class="control-group span4" style="float:right;">
						<button type="button" id="btnSearch" class="button button-primary">搜索</button>
						<button type="reset" class="button" style="margin-left: 15px;">重置</button>
					</div>
				</div>
			</form>
		</div>
		<!-- 数据表格 -->
		<div class="search-grid-container">
			<div id="grid"></div>
		</div>
	</div>
	<!-- 隐藏的Dialog内容 -->
	<div id="content" class="hide">
		<form id="J_Form" class="form-horizontal">
			<input type="hidden" name="id">
			<div class="row">
				<div class="control-group span8">
					<label class="control-label"><s>*</s>模板编号：</label>
					<div class="controls">
						<input name="mid" type="text" data-rules="{required:true}"  
						onkeyup="value=value.replace(/[^/d]/g,'') " 
 onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^/d]/g,''))" 
							class="input-normal control-text" />
					</div>
				</div>
				<div class="control-group span8">
					<label class="control-label">模板类型</label>
					<div class="controls control-row4">
						<input name="type" type="text" class="input-normal control-text"
							data-rules="{maxlength:20}" />
					</div>

				</div>
			</div>
			<div class="row">
				<div class="control-group span8">
					<label class="control-label"><s>*</s>是否发布：</label>
					<div class="controls">
						<select name="muse" data-rules="{required:true}"
							class="input-normal">
							<option value="">请选择</option>
							<option value="true">是</option>
							<option value="false">否</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="control-group span8">
					<label class="control-label">模板说明：</label>
					<div class="controls control-row4">
						<input name="mexplain" type="text"
							class="input-normal control-text2" data-rules="{maxlength:500}" />
					</div>
				</div>
			</div>

		</form>
	</div>
	<script type="text/javascript" src="../assets/js/jquery-1.8.1.min.js"></script>
	<script type="text/javascript" src="../assets/js/bui-min.js"></script>
	<script type="text/javascript" src="../assets/js/config-min.js"></script>

	<script type="text/javascript">
		BUI
				.use(
						[ 'common/search', 'common/page' ],
						function(Search) {
							// 性别映射对象
							var enumObj = {
								"true" : "是",
								"false" : "否"
							};
							// 表格列
							var columns = [
									{
										title : '模板编号',
										dataIndex : 'id',
										width : 120,
									/* renderer : function(v) {
										return Search.createLink({
											id : 'type' + v,
											title : '模板类型',
											text : v,
											href : 'query?id='
													+ v
										});
									} */
									},
									{
										title : '是否发布',
										dataIndex : 'muse',
										width : 120,
										renderer : BUI.Grid.Format
												.enumRenderer(enumObj)
									},
									{
										title : '模板类型',
										dataIndex : 'type',
										width : 120
									},
									{
										title : '模板说明',
										dataIndex : 'mexplain',
										width : 550
									},
									{
										title : '操作',
										width : 120,
										renderer : function(value, obj) {
													editStr = '<span class="grid-command btn-edit" title="编辑模板信息">编辑</span>',
													delStr = '<span class="grid-command btn-del" title="删除模板信息">删除</span>';
											return editStr + delStr;
										}
									} ];

							// 数据源对象 
							//var store = Search.createStore('../user/getAllUsers.action'); // 查询所有用户
							var store = Search.createStore('findAllModule', { // 分页查找
								proxy : {
									pageStart : 1, // 修改pageIndex-第几页
									method : 'POST'
								},
								autoSync : true, // 保存数据后，自动更新
								pageSize : 3
							// 修改limit-单页多少条记录
							});
							// 弹出新建/编辑窗口
							var editing = new BUI.Grid.Plugins.DialogEditing(
									{
										contentId : 'content', // 设置隐藏的Dialog内容
										autoSave : true, // 添加数据或者修改数据时，自动保存
										triggerCls : 'btn-edit',
										editor : {
											title : '模板编号',
											success : function() {
												var edtor = this;
												var form = edtor.get('form');
												var editType = editing
														.get('add'); // add 或 edit
												if (editType == 'add') {
													url = 'add'; // 新增请求
												} else {
													url = 'update'; // 编辑请求
												}
												// 表单验证
												form.valid();
												if (form.isValid()) {
													// 表单异步提交
													form
															.ajaxSubmit({
																url : url,
																type : 'post',
																success : function(
																		data) {
																	if (data.code == 0) { // 成功
																		if (editType == 'add') {
																			BUI.Message
																					.Alert("添加成功！");
																		} else {
																			BUI.Message
																					.Alert("修改成功！");
																		}
																		editing
																				.cancel(); // 隐藏弹出层
																		search
																				.load(); // 刷新表格
																	} else {
																		BUI.Message
																				.Alert(data.message);
																	}
																},
																error : function() {
																	BUI.Message
																			.Alert("请求失败，请重试！");
																}
															});
												}
											}
										}
									});

							// 配置列信息及工具栏
							var gridCfg = Search.createGridCfg(columns, {
								tbar : {
									// 工具栏的项
									items : [ {
										// xclass : 'bar-item-button' // 按钮(bar-item-button)-默认、 文本(bar-item-text)、分隔符(bar-item-separator)或自定义项
										text : '<i class="icon-plus"></i>添加',
										btnCls : 'button button-small',
										handler : addFunction
									}, {
										text : '<i class="icon-edit"></i>编辑',
										btnCls : 'button button-small',
										handler : editFunction
									}, {
										text : '<i class="icon-remove"></i>删除',
										btnCls : 'button button-small',
										handler : delFunction
									} ]
								},
								plugins : [ editing,
										BUI.Grid.Plugins.CheckSelection, // 选择行插件
										BUI.Grid.Plugins.AutoFit ]
							// 自适应宽度
							});

							var search = new Search({
								formId : 'searchForm', // 表单的id，默认为：searchForm
								btnId : 'btnSearch', // 提交按钮的id，默认为：btnSearch
								gridId : 'grid', // 表格容器的id，默认为：grid
								autoSearch : true, // 页面显示后，是否自动进行查询，默认为：true
								store : store,
								gridCfg : gridCfg
							/* formCfg : 表单的配置项 */
							});

							// 获取表格控件
							var grid = search.get('grid');

							// 新建操作
							function addFunction() {
								var newData = {
									isNew : true
								};
								editing.add(newData);
							}

							// 编辑操作
							function editFunction() {
								// 只能选择一行编辑
								var selections = grid.getSelection();
								if (selections.length == 1) {
									// 弹窗编辑
									editing.edit(selections[0]);
								} else {
									BUI.Message.Alert("请选择一个要编辑的行！");
								}
							}

							// 删除操作 -- 支持批量删除
							function delFunction() {
								// 获取选择项
								var selections = grid.getSelection();
								if (selections.length > 0) {
									// 删除
									delItems(selections);
								} else {
									BUI.Message.Alert("请选择要删除的数据！");
								}
							}

							// 添加事件处理函数 -- 添加删除记录的监听事件 -- 选择单行删除
							grid.on('cellclick', function(ev) {
								// 获取点击的DOM节点
								var sender = $(ev.domTarget);
								if (sender.hasClass('btn-del')) {
									var record = ev.record;
									delItems(record);
								}
							});

							// 执行删除的方法
							function delItems(items) {
								var uids = [];
								BUI.each(items, function(item) {
									// item即为每一行的一条用户信息
									uids.push(item.id);
								});
								if (uids.length) {
									BUI.Message
											.Confirm(
													'确认要删除选中的记录吗？',
													function() {
														// 点击确认删除，发送删除的请求到后台，删除数据库数据
														$
																.ajax({
																	url : 'del',
																	data : {
																		id : 'id'
																	},
																	dataType : 'json',
																	success : function(
																			data) {
																		if (data.code == 0) { // 删除成功
																			BUI.Message
																					.Alert("删除成功！");
																			search
																					.load(true); // 重新加载页码
																		} else {
																			BUI.Message
																					.Alert(data.message);
																		}
																	}
																});
													}, 'question');
								}
							}
						});
	</script>
<body>
</html>
