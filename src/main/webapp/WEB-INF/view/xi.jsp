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
				<li class="active"><a href="<%=request.getContextPath()%>/user/tolist"><span class="glyphicon glyphicon-home"></span> Home</a></li>
				<li><a href="<%=request.getContextPath()%>/user/shop"><span class="glyphicon glyphicon-shopping-cart"></span> Shop</a></li>
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
                    <li ><a href="<%=request.getContextPath()%>/user/ti">欢迎>></a></li>
                    <li><a href="<%=request.getContextPath()%>/user/ticket">定时订票</a></li>
                    <li><a href="#">我的订单</a></li>
                    <li class="active"><a href="#">会员信息</a></li>
                    <li><a href="#">支持帮助</a></li>
                </ul>
            </div>
            <div class="col-xs-12 col-sm-9 col-md-10">
                <div class="panel-body">
					<div class="media">
						<a class="pull-left" href="#"> <img class="media-object"
							src="/img/3bfaa9cca5763ded30a9e9805ba99885.jpg" width="150px"
							alt="Media Object"><br>
    					<input type="button" id="inputfile"  value="选择头像"><br><br>
    					<input type="button" class="btn"  data-toggle="modal" data-target="#Mo" value="账户充值">
    					<br><br>
    					<c:if test="${us.idCard==null }"><input type="button"  data-toggle="modal" data-target="#Mod" class="btn" value="完善资料"></c:if>
						<c:if test="${us.name!=null }"><input type="button"  data-toggle="modal" data-target="#Mod" class="btn" value="修改资料"></c:if>
						</a>
						<div class="media-body">
							
							<table class="table table-hover">
								<thead>
									<tr>
										<td>真实姓名：</td>
										<td>${us.name }</td>
									</tr>
									<tr>
										<td>用户名：</td>
										<td>${us.username }</td>
									</tr>
									<tr>
										<td>身份证：</td>
										<td>${us.idCard }</td>
									</tr>
									<tr>
										<td>性别：</td>
										<td>${us.gender }</td>
									</tr>
									<tr>
										<td>电话：</td>
										<td>${us.telno }</td>
									</tr>
									<tr>
										<td>地点</td>
										<td>${us.address }</td>
									</tr>
									<tr>
										<td>账号创建时间：</td>
										<td>${us.regTime }</td>
									</tr>
									<tr>
										<td>账号余额：</td>
										<td>${us.balance }</td>
									</tr>
								</thead>
							</table>
						</div>
					</div>
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
	<div class="modal fade" id="Mod" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h1 class="text-center text-primary">个人信息</h1>
				</div>
				<div class="modal-body">
					<form action="<%=request.getContextPath()%>/user/newup" class="form col-md-12 center-block" >
						<div class="form-group">
							登录账号<input type="text" class="form-control input-lg" name="username" value="${us.username }"
								placeholder="登录账号">
						</div>
						<div class="form-group">
							登录密码<input type="password" class="form-control input-lg" name="password" value="${us.password }"
								placeholder="登录密码">
						</div>
						<div class="form-group">
							真实姓名<input type="text" class="form-control input-lg" name="name" value="${us.name }"
								placeholder="真实姓名">
						</div>
						<div class="form-group">
							<input type="radio"  class="btn btn-primary btn-lg" name="gender"  value="男" checked>男
							<input type="radio"  class="btn btn-primary btn-lg" name="gender"  value="女" checked>女
						</div>
						<div class="form-group">
							身份证号<input type="text" class="form-control input-lg" name="idCard" value="${us.idCard }"
								placeholder="身份证号">
						</div>
						<div class="form-group">
							城市<input type="text" class="form-control input-lg" name="address" value="${us.address }"
								placeholder="城市">
						</div>
						<div class="form-group">
							电话<input type="text" class="form-control input-lg" name="telno" value="${us.telno }"
								placeholder="电话">
						</div>
						<input type="hidden" name="uid" value="${us.uid }">
						<input type="hidden" name="regTime" value="${us.regTime }">
						<div class="form-group">
							<input type="submit" class="btn btn-primary btn-lg btn-block" value="立刻修改">
							<span><a href="#">aa</a></span> <span><a href="#"
								class="pull-right">aa</a></span>
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
	<div class="modal fade" id="Mo" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h1 class="text-center text-primary">账户充值</h1>
				</div>
				<div class="modal-body">
					<form action="<%=request.getContextPath()%>/user/mon" class="form col-md-12 center-block" >
						<div class="form-group">
							账户：<input type="text" class="form-control input-lg" name="username" value="${us.username }"
								placeholder="账户">
						</div>
						<div class="form-group">
							金额：<input type="text" class="form-control input-lg" name="mon" value="${us.balance }"
								placeholder="充值金额">
						</div>
						<input type="hidden" name="uid" value="${us.uid }">
						<input type="hidden" name="regTime" value="${us.regTime }">
						<input type="hidden" name="balance" value="${us.balance }">
						<div class="form-group">
							<input type="submit" class="btn btn-primary btn-lg btn-block" value="充值">
							<span><a href="#">aa</a></span> <span><a href="#"
								class="pull-right">aa</a></span>
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
	});
</script>
</body>
</html>