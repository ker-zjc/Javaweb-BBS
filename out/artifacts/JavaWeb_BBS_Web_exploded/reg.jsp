<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="utf-8" %>
<html>
	<head>
		<meta charset="utf-8">
		<!DOCTYPE html>
		<title>用户注册</title>
		<meta name="renderer" content="webkit|ie-comp|ie-stand">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8, target-densitydpi=low-dpi" />
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<link rel="stylesheet" href="css/reg1.css"/>
	</head>
<body class="login-bg">
<div id="bigBox">
	<h1>用户注册</h1>
<form action="/s/reg" method="post">
			<table>
				<div class="inputBox">
					<div class="inputText">
						<span class="iconfont icon-nickname"></span>
						<input type="text" placeholder="用户名" name="uName">
					</div>
					<div class="inputText">
						<span class="iconfont icon-visible"></span>
						<input type="password" placeholder="密码" name="uPass">
					</div>
					<div class="inputText">
						<span class="iconfont icon-visible"></span>
						<input type="password" placeholder="确认密码" name="rePass">
					</div>
					<div class="inputText">
						<span class="iconfont icon-phone"></span>
						<input type="text" placeholder="手机号">
					</div>
				</div>
				<tr>
					<td align="right">性别：</td>
					<td>男<input type="radio" name="sex" checked="checked" id="1" value="1"/>
						女<input type="radio" name="sex" id="0" value="0"/></td>
				</tr>
			</table>
				<table>
					<tr>请选择头像</tr>
					<tr>
						<td><input type="radio" name="img" id="1.gif" value="1.gif"/><img width="100" src="1.gif"></td>
						<td><input type="radio" name="img" id="2.gif" value="2.gif"/><img width="100" src="2.gif"></td>
						<td><input type="radio" name="img" id="3.gif" value="3.gif"/><img width="100" src="3.gif"></td>
					</tr>
				</table>
					<tr>
						<input type="submit" value="注册"><a href="login.jsp"><input type="button" value="返回登录"></a>
					</tr>
	</form>
</div>
</body>
</html>
