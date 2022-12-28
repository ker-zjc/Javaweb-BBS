<%@ page import="java.beans.JavaBean" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="javax.xml.transform.Result" %><%--
  Created by IntelliJ IDEA.
  User: TanXiangyu
  Date: 2021/10/28
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>提示</title>
</head>
<body>
<div align="center">
    <font size="6" color="skyblue">校园BBS系统</font>
</div>
<%
    String time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
    if (session.getAttribute("result")!=null){
%>
<dev>注册成功！</dev>
<dev><a href="login.jsp"/> 点击返回登录</dev>
<%
    } else {
%>
<dev>注册失败</dev>
<dev>失败原因是：<%= session.getAttribute("reason")%></dev>
<dev><a href="reg.jsp"/> 点击返回重试</dev>
<%}%>
<dev>现在时间是：<%= time%></dev>

</body>
</html>
