<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored ="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>会议管理系统</title>
<meta name="description" content="AdminLTE2定制版">
<meta name="keywords" content="AdminLTE2定制版">
	<script type="text/javascript" src="//cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="//static.runoob.com/assets/qrcode/qrcode.min.js"></script>

<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">

<link rel=“stylesheet”
	href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.css">
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

<body class="hold-transition skin-blue sidebar-mini">

	<div class="wrapper">

		<!-- 页面头部 -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- 页面头部 /-->

		<!-- 导航侧栏 -->
		<jsp:include page="aside.jsp"></jsp:include>
		<!-- 导航侧栏 /-->

		<!-- 内容区域 -->
		<div class="content-wrapper">

			<!-- 内容头部 -->
			<section class="content-header">
			<h1>
				订单管理 <small>全部订单</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="all-admin-index.html"><i
						class="fa fa-dashboard"></i> 首页</a></li>
				<li><a href="all-order-manage-list.html">会议管理</a></li>
				<li class="active">会议详情</li>
			</ol>
			</section>
			<!-- 内容头部 /-->

			<!-- 正文区域 -->
			<section class="content"> <!--订单信息-->
			<div class="panel panel-default">
				<div class="panel-heading">会议信息</div>
				<div class="row data-type">

					<div class="col-md-2 title">会议编号</div>
					<div class="col-md-4 data">
						<input type="text" id="text" class="form-control" placeholder="会议编号"
							value="${meetingjoinuser.id }" readonly="readonly">
					</div>
					</div>

					<div class="col-md-2 title">会议宾馆</div>
					<div class="col-md-4 data">
						<input type="text" class="form-control" placeholder="会议宾馆"
						   value="${meetingjoinuser.hotel }" readonly="readonly">
					</div>


					<div class="col-md-2 title">会议地点</div>
					<div class="col-md-4 data">
						<input type="text" class="form-control" placeholder="会议地点"
							value="${meetingjoinuser.location }" readonly="readonly">
					</div>

				<div class="col-md-2 title">会议名称</div>
				<div class="col-md-4 data">
					<input type="text" class="form-control" placeholder="会议名称"
						   value="${meetingjoinuser.name }" readonly="readonly">
				</div>

				<div class="col-md-2 title">开始时间</div>
				<div class="col-md-4 data">
					<input type="text" class="form-control" placeholder="开始时间"
						   value="${meetingjoinuser.start }" readonly="readonly">
				</div>

				<div class="col-md-2 title">会议时长</div>
				<div class="col-md-4 data">
					<input type="text" class="form-control" placeholder="会议时长"
						   value="${meetingjoinuser.time }" readonly="readonly">
				</div>

				<div class="col-md-2 title">组织者id</div>
				<div class="col-md-4 data">
					<input type="text" class="form-control" placeholder="组织者id"
						   value="${meetingjoinuser.hold_user_id }" readonly="readonly">
				</div>
				<!--<div id="qrcodeTable"></div>-->

				<!--<button id="text" value="${meetingjoinuser.id}">查看二维码</button>-->
				<p>会议二维码</p>
				<!--<input id="text" type="text" value="http://www.runoob.com" style="width:80%" /><br />-->
				<div id="qrcode" style="width:100px; height:100px; margin-top:15px;"></div><br/>
				<script type="text/javascript">
					var qrcode = new QRCode(document.getElementById("qrcode"), {
						width : 100,
						height : 100
					});
					function makeCode () {
						var elText = document.getElementById("text");

						if (!elText.value) {
							alert("Input a text");
							elText.focus();
							return;
						}

						qrcode.makeCode(elText.value);
					}
					makeCode();
					$("#text").
					on("blur", function () {
						makeCode();
					}).
					on("keydown", function (e) {
						if (e.keyCode == 13) {
							makeCode();
						}
					});
				</script>

			</div>

			<div class="panel panel-default">
				<div class="panel-heading">参会人员信息</div>

				<table id="tableid" class="table table-bordered table-striped table-hover dataTable">
					<thead>
						<tr>
							<!--
							<th class="" style="padding-right: 0px;"><input
								id="selall" type="checkbox" class="icheckbox_square-blue">
							</th>-->
							<th class="sorting_asc">ID</th>
							<th class="sorting_desc">姓名</th>
							<th class="sorting_asc sorting_asc_disabled">性别</th>
							<th class="sorting_desc sorting_desc_disabled">电话号码</th>
							<th class="sorting">身份证号</th>
							<th class="text-center sorting">邮箱</th>
						</tr>


					</thead>
					<tbody>
						<c:forEach var="users" items="${meetingjoinuser.users}">
							<tr>
								<!--
								<td><input type="text" size="10" value="${users.id }"
									readonly="readonly"></td>
								<td><input type="text" size="10" value="${users.username }"
									readonly="readonly"></td>
								<td><input type="text" size="10" value="${users.gender }"
										   readonly="readonly"></td>
								<td><input type="text" size="15"
										   value="${users.phone_number}" readonly="readonly"></td>
								<td><input type="text" size="20"
										   value="${users.id_card}" readonly="readonly"></td>
								<td><input type="text" size="20"
									value="${users.email }" readonly="readonly"></td>
									-->
								<td>${users.id}</td>
								<c:if test="${meetingjoinuser.need_name==1}"><td>${users.username}</td></c:if>
								<c:if test="${meetingjoinuser.need_name==null}"><td></td></c:if>
								<c:if test="${meetingjoinuser.need_gender==1}"><td>${users.genderStr }</td></c:if>
								<c:if test="${meetingjoinuser.need_gender==null}"><td></td></c:if>
								<c:if test="${meetingjoinuser.need_phone_number==1}"><td>${users.phone_number}</td></c:if>
								<c:if test="${meetingjoinuser.need_phone_number==null}"><td> </td></c:if>
								<c:if test="${meetingjoinuser.need_id_card==1}"><td>${users.id_card}</td></c:if>
								<c:if test="${meetingjoinuser.need_id_card==null}"><td> </td></c:if>
								<!--<td>${users.username }</td>-->
								<!--<td>${users.gender }</td>-->
								<!--<td>${users.phone_number}</td>-->
								<!--<td>${users.id_card}</td>-->
								<td>${users.email }</td>
							</tr>

						</c:forEach>
					</tbody>
				</table>
			</div>

			<div class="box-tools text-center">
				<button onclick="toexcel()" class="btn bg-default">下载Excel</button>
				<script type="text/javascript" >
					var tableId = document.getElementById('tableid');
					function toexcel() {
						methodtable2excel(tableId);
					}
				</script>
				<button type="button" class="btn bg-default"
					onclick="history.back(-1);">返回</button>
			</div>
			<!--工具栏/--> </section>
			<!-- 正文区域 /-->


		</div>
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
		src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>

	<script>
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
			setSidebarActive("order-manage");

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
		/* Table 生成 Excel */
		var idTmr;
		function  getExplorer() {
			var explorer = window.navigator.userAgent ;

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
			/*Opera
			else if(explorer.indexOf("Opera") >= 0){
				return 'Opera';
			}
			//Safari
			else if(explorer.indexOf("Safari") >= 0){
				return 'Safari';
			}*/
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
		})();
	</script>
</body>


</html>