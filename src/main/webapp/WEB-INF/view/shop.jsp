<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-3.3.7-dist/css/bootstrap.min.css">

</head>
<body>

<div class="navbar navbar-inverse" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">购票系统</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="<%=request.getContextPath()%>/user/tolist"><span class="glyphicon glyphicon-home"></span> Home</a></li>
				<li class="active"><a href="#shop"><span class="glyphicon glyphicon-shopping-cart"></span> Shop</a></li>
				<li><a href="#support"><span class="glyphicon glyphicon-headphones"></span> Support</a></li>
				<li>
				 	<form class="navbar-form navbar-left" role="search">
							<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
							</div>
					</form>
					</li>
			</ul>
			 <ul class="nav navbar-nav navbar-right"> 
			 <c:if test="${sessionScope.us==null }">
			 			 <li><a href="#"   data-toggle="modal" data-target="#Modal"><span class="glyphicon glyphicon-log-in"></span > 注册</a></li>
			             <li><a href="#"   data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span > 登录</a></li> 
			 </c:if>
			  <c:if test="${sessionScope.us!=null }">
			  			<li><a href="#"  title="账户余额：${sessionScope.us.balance }"  data-container="body" data-toggle="popover" data-placement="bottom" data-content="账户：${sessionScope.us.username}   ||    电话：${sessionScope.us.telno}" ><span class="glyphicon glyphicon-user"></span > 
				${sessionScope.us.name}
			  			</a></li>
				 		<li><a href="<%=request.getContextPath()%>/user/loginoff"  ><span class="glyphicon glyphicon-log-in"></span > 登出</a></li>
			 </c:if>
        </ul> 
		</div>
	</div>
</div>

<div class="container-fluid">
        <div class="row">
            <div class="span2  col-xs-12 col-sm-3 col-md-2">
                <ul class="nav nav-pills nav-stacked" >
                    <li> <a href="<%=request.getContextPath()%>/user/ti">欢迎>></a></li>
                    <li class="active"><a href="#">定时订票</a></li>
                    <li><a href="#">我的订单</a></li>
                    <li><a href="<%=request.getContextPath()%>/user/xi">会员信息</a></li>
                    <li><a href="#">支持帮助</a></li>
                </ul>
            </div>
            <div class="col-xs-12 col-sm-9 col-md-10">
            <form action="<%=request.getContextPath()%>/user/ticket" method="post">
            	请选择起始日期（查询7天以内票项）：<input type="text" class="Wdate" name="startTime" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true})"> 
            	<input type="submit" class="btn" value="查询">
				</form>
				 <table class="table table-condensed">
					<thead>
						<tr>
							<th>序列</th>
							<th>描述</th>
							<th>时间</th>
							<th>总票数</th>
							<th>购买票数</th>
							<th>单价（元）</th>
							<th>状态</th>
							<th>购票数</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${cart }" var="t">
						<tr>
							<td>${t.tid }</td>
							<td>${t.desc }</td>
							<td>${t.startTime }</td>
							<td>${t.amount }</td>
							<td>${t.balance }</td>
							<td>${t.price }</td>
						</tr>
						</c:forEach>
					</tbody>
				</table> 
				<center>
				当前页：${page.currentPage}/${page.totalPage} 总记录：${page.totalCount }<br>
				<div class="btn-group">
				<button class="btn btn-default" onclick="getPage(1)">首页</button>
				<button class="btn btn-default" onclick="getPage(${page.prevPage})">上一页</button>
				<button class="btn btn-default" onclick="getPage(${page.nextPage})">下一页</button>
				<button class="btn btn-default" onclick="getPage(${page.totalPage})">尾页</button>
				</div>
				</center>
			</div>
            </div>
        </div>
    </div>

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h1 class="text-center text-primary">登录</h1>
				</div>
				<div class="modal-body">
					<form action="<%=request.getContextPath()%>/user/login" class="form col-md-12 center-block" >
						<div class="form-group">
							<input type="text" class="form-control input-lg" name="username"
								placeholder="登录账号">
						</div>
						<div class="form-group">
							<input type="password" class="form-control input-lg" name="password"
								placeholder="登录密码">
						</div>
						<div class="form-group">
							<input type="submit" class="btn btn-primary btn-lg btn-block" value="立刻登录">
							<span><a href="#">找回密码</a></span> <span><a href="#"
								class="pull-right">注册</a></span>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	
	<div class="modal fade" id="Modal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h1 class="text-center text-primary">注册</h1>
				</div>
				<div class="modal-body">
					<form action="<%=request.getContextPath()%>/user/sign" class="form col-md-12 center-block" >
						<div class="form-group">
							<input type="text" class="form-control input-lg" name="username"
								placeholder="登录账号">
						</div>
						<div class="form-group">
							<input type="password" class="form-control input-lg" name="password"
								placeholder="登录密码">
						</div>
						<div class="form-group">
							<input type="text" class="form-control input-lg" name="name"
								placeholder="真实姓名">
						</div>
						<div class="form-group">
							<input type="radio"  class="btn btn-primary btn-lg" name="gender"  value="男" checked>男
							<input type="radio"  class="btn btn-primary btn-lg" name="gender"  value="女" checked>女
						</div>
						<div class="form-group">
							<input type="submit" class="btn btn-primary btn-lg btn-block" value="立刻注册">
							<span><a href="#">找回密码</a></span> <span><a href="#"
								class="pull-right">注册</a></span>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap-3.3.7-dist/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript">
	function login() {
		$('aa').modal(show);
	}
	$(function () { 
		$("[data-toggle='popover']").popover();
		if(${sessionScope.us==null }){
			alert("<h1>请登录</h1>");
			location.href="<%=request.getContextPath()%>/user/tolist";
		}
	});
	function getPage(page) {
		location.href="<%=request.getContextPath()%>/user/ticket?currentPage="+page;
	}
	function cart(tid,balance) {
		var a = $("#num"+tid).val();
		if(balance<=a){
			alert("没有用户需求的票数");
		}
		var b = balance-a;
		location.href="<%=request.getContextPath()%>/user/cart?tid="+tid+"+&b="+b;
	}
	
</script>
</body>
</html>