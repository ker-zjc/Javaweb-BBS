<%@ page import="dao.BoardDao" %>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="renderer" content="webkit|ie-comp|ie-stand">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8, target-densitydpi=low-dpi" />
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<title></title>
		<link rel="stylesheet" href="css/post1.css"/>
	</head>
	<body>
	<div id="bigBox">
			<table>
				<tr>
					<td>
						<h1>我知道~我来发~~</h1>
					</td>
				</tr>
			</table>
		<%
		if(session.getAttribute("user")==null){
		%>
		<div>
			您尚未<a href="login.jsp">登录</a>|<a href="reg.jsp">注册</a>
		</div>
		<%
		} else{
		%>
		<div style="text-align: left">
			${sessionScope.user.userName},欢迎你！
		</div>
		<% }%>
		<%
			int boardId = (int) session.getAttribute("boardId");
			BoardDao boardDao = (BoardDao) session.getAttribute("boardDao");
		%>
		<p>
			>>><a href="index.jsp">论坛首页</a>>><a href="/s/list?boardId=<%= boardId%>"><%= boardDao.findBoard(boardId).getBoardName()%></a>
		</p>

		<table>
			<tr>
				<td>
					<h2>发表帖子</h2>
				</td>
			</tr>
		</table>
		<form action="/s/post" method="post">
			<table>
				<tr>
					<td><h4>标题</h4></td><td><textarea rows="2" cols="43" type="text" name="title"/></textarea></td>
				</tr>
				<tr>
					<td><h4>内容</h4></td><td><textarea rows="15" cols="43" name="content"></textarea></td>
				</tr>
				<tr>
					<td></td><td>（不能大于：1000字）</td>
				</tr>
				<tr>
					<td align="center"><input type="submit" name="提交"></td><td><input type="reset" name="重置"></td>
				</tr>
			</table>
		</form>
	</div>
	</body>
</html>