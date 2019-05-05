<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="commons" uri="http://igeek.com/common/"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta name="description" content=""/>
<meta name="author" content=""/>

<title>老司机考研咨询系统</title>

<!-- Bootstrap Core CSS -->
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet"/>

<!-- MetisMenu CSS -->
<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet"/>

<!-- DataTables CSS -->
<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet"/>

<!-- Custom CSS -->
<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet"/>

<!-- Custom Fonts -->
<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet"
	type="text/css"/>
<link href="<%=basePath%>css/kaoyan.css" rel="stylesheet"
	type="text/css"/>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">考研咨询系统</a>
		</div>
		<!-- /.navbar-header -->

		<ul class="nav navbar-top-links navbar-right">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-envelope fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>

		</ul>
		<!-- /.navbar-top-links -->

		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li class="sidebar-search">
						<div class="input-group custom-search-form">
							<input type="text" class="form-control" placeholder="查询内容...">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">
									<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
								</button>
							</span>
						</div> <!-- /input-group -->
					</li>
					<li><a href="list.action" class="active"><i
							class="fa fa-edit fa-fw"></i>根据个人情况查询</a></li>
			<!-- 		<li><a href="salevisit.action"><i
							class="fa fa-dashboard fa-fw"></i> 客户拜访</a></li> -->
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">考研咨询系统</h1>
					<h3 class="page-header">请根据您的实际情况进行选择，系统为您匹配相近考生</h3>
					<h4 class="page-header">友情提示：可以只选择其中一部分选项，点击查询即可</h4>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="panel panel-default">
				<div class="panel-body">
					<form class="form-inline" action="${pageContext.request.contextPath }/student/list.action" method="get">
	<%-- 					<div class="form-group">
							<label for="studentName">客户名称</label> 
							<input type="text" class="form-control" id="studentName" value="${custName }" name="custName">
						</div> --%>
						<!--
					 undergraduateLevel=001
					gpa=002
					major=005
					englishLevel=003
					crossMajor=004
					numberOfExam=009
					prizeAndProject=007
						 -->
						<div class="form-group">
							<label for="studentFrom">院校层次</label> 
							<select	class="form-control" id="undergraduateLevel" placeholder="院校层次" name="undergraduateLevel">
								<option value="">--请选择--</option>
								<c:forEach items="${schoolList}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == undergraduateLevel}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<label for="gpa">gpa</label> 
							<select	class="form-control" id="gpa"  name="gpa">
								<option value="">--请选择--</option>
								<c:forEach items="${gpaList}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == gpa}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
						<%-- <div class="form-group">
							<label for="major">报考专业</label>
							<select	class="form-control" id="major" name="major">
								<option value="">--请选择--</option>
								<c:forEach items="${majorList}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == major}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div> --%>
						<div class="form-group">
							<label for="englishLevel">英语水平</label>
							<select	class="form-control" id="englishLevel" name="englishLevel">
								<option value="">--请选择--</option>
								<c:forEach items="${englishList}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == englishLevel}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<label for="major">报考专业</label>
							<select	class="form-control" id="major" name="major">
								<option value="">--请选择--</option>
								<c:forEach items="${majorList}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == major}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<label for="crossMajor">是否跨专业</label>
							<select	class="form-control" id="crossMajor" name="crossMajor">
								<option value="">--请选择--</option>
								<c:forEach items="${crossList}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == crossMajor}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<label for="prizeAndProject">有无竞赛项目</label>
							<select	class="form-control" id="prizeAndProject" name="prizeAndProject">
								<option value="">--请选择--</option>
								<c:forEach items="${prizeList}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == prizeAndProject}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>		
						<div class="form-group">
							<label for="numberOfExam">考研次数</label>
							<select	class="form-control" id="numberOfExam" name="numberOfExam">
								<option value="">--请选择--</option>
								<c:forEach items="${numberList}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == numberOfExam}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>			
	
						<button type="submit" class="btn btn-primary">查询</button>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">考生录取信息库</div>
						<!-- /.panel-heading -->
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>考生姓名</th>
									<th>本科学校</th>
									<th>gpa</th>
									<th>报考专业</th>
									<th>英语水平</th>
									<th>是否跨专业</th>
									<th>有无竞赛项目</th>
									<th>考研次数</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.rows}" var="row">
									<tr>
										<td>${row.name}</td>
										<td>${row.undergraduateSchool}</td>
										<td>${row.gpa}</td>
										<td>${row.major}</td>
										<td>${row.englishLevel}</td>
										<td>${row.crossMajor}</td>
										<td>${row.prizeAndProject}</td>
										<td>${row.numberOfExam}</td>
									</tr>
								</c:forEach>
							</tbody>
						<!-- 添加分页功能 -->
						</table>
						<div class="col-md-12 text-right">
							<commons:page url="${pageContext.request.contextPath }/student/list.action" />
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
		</div>
		<!-- /#page-wrapper -->

	</div>
	

	<!-- jQuery -->
	<script src="<%=basePath%>js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<%=basePath%>js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="<%=basePath%>js/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
	<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="<%=basePath%>js/sb-admin-2.js"></script>
	
	<script type="text/javascript">
		function editstudent(id) {
			$.ajax({
				type:"get",
				url:"<%=basePath%>student/edit.action",
				data:{"id":id},
				success:function(data) {
					$("#edit_cust_id").val(data.cust_id);
					$("#edit_studentName").val(data.cust_name);
					$("#edit_studentFrom").val(data.cust_source)
					$("#edit_custIndustry").val(data.cust_industry)
					$("#edit_custLevel").val(data.cust_level)
					$("#edit_linkMan").val(data.cust_linkman);
					$("#edit_phone").val(data.cust_phone);
					$("#edit_mobile").val(data.cust_mobile);
					$("#edit_zipcode").val(data.cust_zipcode);
					$("#edit_address").val(data.cust_address);
					
				}
			});
		}
		function updatestudent() {
			$.post("<%=basePath%>student/update.action",$("#edit_student_form").serialize(),function(data){
				alert("客户信息更新成功！");
				window.location.reload();
			});
		}
		
		function deletestudent(id) {
			if(confirm('确实要删除该客户吗?')) {
				$.post("<%=basePath%>student/delete.action",{"id":id},function(data){
					alert("客户删除更新成功！");
					window.location.reload();
				});
			}
		}
	</script>

</body>

</html>
