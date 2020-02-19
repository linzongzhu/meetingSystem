<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored ="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">




<title>会议管理系统</title>
<meta name="description" content="AdminLTE2定制版">
<meta name="keywords" content="AdminLTE2定制版">


<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">

  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <script type="text/javascript" src="jquery.qrcode.min.js"></script>
  <script src="${pageContext.request.contextPath}/layui/layui.js"charset="utf-8"></script>
<link rel="stylesheet" href="/layui/css/layui.css" media="all">



<!-- jQuery 2.2.3 -->
<!-- jQuery UI 1.11.4 -->
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<!-- Bootstrap 3.3.6 -->
<!-- Morris.js charts -->
<!-- Sparkline -->
<!-- jvectormap -->
<!-- jQuery Knob Chart -->
<!-- daterangepicker -->
<!-- datepicker -->
<!-- Bootstrap WYSIHTML5 -->
<!-- Slimscroll -->
<!-- FastClick -->
<!-- iCheck -->
<!-- AdminLTE App -->
<!-- 表格树 -->
<!-- select2 -->
<!-- bootstrap color picker -->
<!-- bootstrap time picker -->
<!--<script src="${pageContext.request.contextPath}/${pageContext.request.contextPath}/${pageContext.request.contextPath}/plugins/timepicker/bootstrap-timepicker.min.js"></script>-->
<!-- Bootstrap WYSIHTML5 -->
<!--bootstrap-markdown-->
<!-- CK Editor -->
<!-- InputMask -->
<!-- DataTables -->
<!-- ChartJS 1.0.1 -->
<!-- FLOT CHARTS -->
<!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
<!-- FLOT PIE PLUGIN - also used to draw donut charts -->
<!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
<!-- jQuery Knob -->
<!-- Sparkline -->
<!-- Morris.js charts -->
<!-- Ion Slider -->
<!-- Bootstrap slider -->
<!-- bootstrap-datetimepicker -->
<!-- 页面meta /-->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/morris/morris.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/select2/select2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">

	<div class="wrapper">

		<!-- 页面头部 -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- 页面头部 /-->
		<!-- 导航侧栏 -->
		<jsp:include page="aside.jsp"></jsp:include>
		<!-- 导航侧栏 /-->

		<!-- 内容区域 -->
		<!-- @@master = admin-layout.html-->
		<!-- @@block = content -->

		<div class="content-wrapper">
			<!-- 内容头部 -->
			<section class="content-header">
				<h1>
					会议管理 <small>会议列表</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
					<li><a href="#">会议管理</a></li>
					<li class="active">会议列表</li>
				</ol>
			</section>
			<!-- 内容头部 /-->

			<!-- 正文区域 -->
			<section class="content">

				<!-- .box-body -->
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">列表</h3>
					</div>

					<div class="box-body">

						<!-- 数据表格 -->
						<div class="table-box">

							<!--工具栏-->
							<div class="pull-left">
								<div class="form-group form-inline">
									<div class="btn-group">
										<button type="button" class="btn btn-default" title="新建"
											onclick="location.href='${pageContext.request.contextPath}/pages/meeting-add.jsp'">
											<i class="fa fa-file-o"></i> 新建
										</button>

<!--
										<button type="button" class="btn btn-default" title="删除"
												onclick="location.href='${pageContext.request.contextPath}/meeting/delete'">
											<i class="fa fa-trash-o"></i> 删除
										</button>-->
									</div>
								</div>
							</div>
							<div class="box-tools pull-right">
								<div class="has-feedback">
									<form action="${pageContext.request.contextPath}/meeting/search">
										<input type="text" class="form-control input-sm"
											   placeholder="输入会议编号" name="id" value="">
										<span class="glyphicon glyphicon-search form-control-feedback"></span>
										<!--<button type="submit" class="btn btn-default">搜索</button>-->
									</form>
									<!--
									<input type="text" class="form-control input-sm"
										placeholder="输入会议编号">
										<span class="glyphicon glyphicon-search form-control-feedback"></span>
									<button type="button" class="btn btn-default" title="搜索"
											onclick="location.href='${pageContext.request.contextPath}/meeting/addUser?id=${meeting.id}'">
										<i class="fa fa-file-o"></i> 搜索
									</button>-->
								</div>
							</div>
							<!--工具栏/-->

							<!--数据列表-->
							<table id="tableid" class="table table-bordered table-striped table-hover dataTable">
								<thead>
									<tr>
										<th class="" style="padding-right: 0px;"><input
											id="selall" type="checkbox" class="icheckbox_square-blue">
										</th>
										<th class="sorting_asc">ID</th>
										<th class="sorting_desc">宾馆</th>
										<th class="sorting_asc sorting_asc_disabled">地点</th>
										<th class="sorting_desc sorting_desc_disabled">会议名称</th>
										<th class="sorting">开始时间</th>
										<th class="text-center sorting">会议时间</th>
										<th class="sorting">发起者id</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${pageInfo.list}" var="meeting">
										<tr>
											<td><input name="ids" type="checkbox" value="${meeting.id}"></td>
											<td>${meeting.id }</td>
											<td>${meeting.hotel }</td>
											<td>${meeting.location}</td>
											<td>${meeting.name}</td>
											<td>${meeting.start }</td>
											<td class="text-center">${meeting.time}</td>
											<td>${meeting.hold_user_id}</td>
											<!--<td class="text-center"></td>-->
											<td class="text-center">
												<button type="button" class="btn bg-olive btn-xs" onclick="location.href='${pageContext.request.contextPath}/meeting/addUser1?id=${meeting.id}'">申请加入</button>
												<button type="button" class="btn bg-olive btn-xs"onclick="location.href='${pageContext.request.contextPath}/meeting/addUser?id=${meeting.id}'">直接加入</button>
												<button type="button" class="btn bg-olive btn-xs"onclick="location.href='${pageContext.request.contextPath}/meeting/findById?id=${meeting.id}'">详情</button>
												<button type="button" class="btn bg-olive btn-xs"onclick="location.href='${pageContext.request.contextPath}/meeting/delete?id=${meeting.id}'">删除</button>
												<!--<button type="button" class="btn bg-olive btn-xs">二维码</button>-->
												<!--
												<a href="${pageContext.request.contextPath}/pages/demo.jsp"><button>查看二维码</button></a>-->
											</td>
										</tr>
									</c:forEach>
								</tbody>

							</table>
							<!--数据列表/-->

							<!--工具栏
							<div class="pull-left">
								<div class="form-group form-inline">
									<button onclick="toexcel()">下载Excel</button>
									<script type="text/javascript">
										var tableId = document.getElementById('tableid');
										function toexcel() {
											methodtable2excel(tableId);
										}
									</script>
								</div>
							</div>-->


						</div>
						<!-- 数据表格 /-->


					</div>
					<!-- /.box-body -->

					<!-- .box-footer-->
					<div class="box-footer">
						<!--
						<div class="pull-left">
							<div class="form-group form-inline">
								总共2 页，共14 条数据。 每页 <select class="form-control"id="changePageSize" onchange="changePageSize()">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select> 条
							</div>
						</div>-->

						<div class="box-tools pull-right">
							<ul class="pagination">
								<li><a href="${pageContext.request.contextPath}/meeting/findAll?page=1&size=${pageInfo.pageSize}" aria-label="Previous">首页</a></li>
								<li><a href="${pageContext.request.contextPath}/meeting/findAll?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}" aria-label="Previous">上一页</a></li>
								<c:forEach begin="1" end="${pageInfo.pages}" var="pagenumber">
									<li><a href="${pageContext.request.contextPath}/meeting/findAll?page=${pagenumber}&size=${pageInfo.pageSize}" aria-label="Previous">${pagenumber}</a></li>
								</c:forEach>


								<li><a href="${pageContext.request.contextPath}/meeting/findAll?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}" aria-label="Previous">下一页</a></li>
								<li><a href="${pageContext.request.contextPath}/meeting/findAll?page=${pageInfo.pages}&size=${pageInfo.pageSize}" aria-label="Next">尾页</a></li>
							</ul>
						</div>

					</div>
					<!-- /.box-footer-->



				</div>

			</section>
			<!-- 正文区域 /-->

		</div>
		<!-- @@close -->
		<!-- 内容区域 /-->



	</div>


	<script
		src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/raphael/raphael-min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/chartjs/Chart.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.resize.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.pie.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.categories.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
	<script>
		function changePageSize(){
			var pageSize=${"#changePageSize"}.val()
			location.href="${pageContext.request.contextPath}/meeting/findAll?page=1&size="
					+pageSize;

		}
		$(document).ready(function() {
			// 选择框
			$(".select2").select2();

			// WYSIHTML5编辑器
			$(".textarea").wysihtml5({
				locale : 'zh-CN'
			});
		});

		// 设置激活菜单
		function setSidebarActive(tagUri) {
			var liObj = $("#" + tagUri);
			if (liObj.length > 0) {
				liObj.parent().parent().addClass("active");
				liObj.addClass("active");
			}
		}

		$(document).ready(function() {

			// 激活导航位置
			setSidebarActive("admin-datalist");

			// 列表按钮 
			$("#dataList td input[type='checkbox']").iCheck({
				checkboxClass : 'icheckbox_square-blue',
				increaseArea : '20%'
			});
			// 全选操作 
			$("#selall").click(function() {
				var clicks = $(this).is(':checked');
				if (!clicks) {
					$("#dataList td input[type='checkbox']").iCheck("uncheck");
				} else {
					$("#dataList td input[type='checkbox']").iCheck("check");
				}
				$(this).data("clicks", !clicks);
			});
		});
/*
		var idTmr;
		function  getExplorer() {
			var explorer = window.navigator.userAgent ;
			//ie
			if (explorer.indexOf("MSIE") >= 0) {
				return 'ie';
			}
			//firefox
			else if (explorer.indexOf("Firefox") >= 0) {
				return 'Firefox';
			}
			//Chrome
			else if(explorer.indexOf("Chrome") >= 0){
				return 'Chrome';
			}
			//Opera
			else if(explorer.indexOf("Opera") >= 0){
				return 'Opera';
			}
			//Safari
			else if(explorer.indexOf("Safari") >= 0){
				return 'Safari';
			}
		}
		function methodtable2excel(tableid) {//整个表格拷贝到EXCEL中
			if(getExplorer()=='ie')
			{
				var curTbl = document.getElementById(tableid);
				var oXL = new ActiveXObject("Excel.Application");//创建AX对象excel

				var oWB = oXL.Workbooks.Add();//获取workbook对象
				var xlsheet = oWB.Worksheets(1);//激活当前sheet
				var sel = document.body.createTextRange();
				sel.moveToElementText(curTbl);//把表格中的内容移到TextRange中
				sel.select();//全选TextRange中内容
				sel.execCommand("Copy");//复制TextRange中内容
				xlsheet.Paste();//粘贴到活动的EXCEL中
				oXL.Visible = true;//设置excel可见属性

				try {
					var fname = oXL.Application.GetSaveAsFilename("Excel.xls", "Excel Spreadsheets (*.xls), *.xls");
				} catch (e) {
					print("Nested catch caught " + e);
				} finally {
					oWB.SaveAs(fname);
					oWB.Close(savechanges = false);
					//xls.visible = false;
					oXL.Quit();
					oXL = null;
					//结束excel进程，退出完成
					//window.setInterval("Cleanup();",1);
					idTmr = window.setInterval("Cleanup();", 1);
				}
			}
			else
			{
				tableToExcel(tableid);
			}
		}
		function Cleanup() {
			window.clearInterval(idTmr);
			CollectGarbage();
		}
		var tableToExcel = (function() {
			var uri = 'data:application/vnd.ms-excel;base64,',
					template = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--><meta charset="UTF-8"></head><body><table>{table}</table></body></html>',
					base64 = function(s) { return window.btoa(unescape(encodeURIComponent(s))) },
					format = function(s, c) {
						return s.replace(/{(\w+)}/g,
								function(m, p) { return c[p]; }) };
			return function(table, name) {
				if (!table.nodeType) table = document.getElementById(table);
				var ctx = {worksheet: name || 'Worksheet', table: table.innerHTML};
				window.location.href = uri + base64(format(template, ctx))
			}
		})();*/
	</script>


</body>

</html>