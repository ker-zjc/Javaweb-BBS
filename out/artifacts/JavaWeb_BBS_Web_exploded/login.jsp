<%@ page contentType="text/html;charset=gbk" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="gbk">
	<meta charset="utf-8">
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8, target-densitydpi=low-dpi" />
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<title>校园BBS登录</title>
	<link rel="stylesheet" href="css/login1.css"/>
</head>
<body>
<div id="bigBox">
	<h1>校园我知道~</h1>
	<div class="inputBox">
		<form action="/s/login" method="post">
			<table>
				<div class="inputText">
					<span class="iconfont icon-nickname"></span>
					<input type="text" placeholder="用户名" name="uName">
					<span class="iconfont icon-visible"></span>
					<input type="password" placeholder="密码" name="uPass">
				</div>
			</table>
			<tr>
				<input type="submit" value="登录">
				<input type="reset" value="重置">
			</tr>
		</form>
	</div>
</div>>
</body>
</html>