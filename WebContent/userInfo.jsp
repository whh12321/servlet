<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎页面</title>
</head>
<body>
<h1>注册信息</h1>
<hr>
<center>
<jsp:useBean id="regUser" class="entity.User" scope="session"/>
<table>
<tr>
<td class="title">用户名：</td>
<td class="content"><jsp:getProperty property="user" name="regUser"/></td>
</tr>
<tr>
<td class="title">密码：</td>
<td class="content"><jsp:getProperty property="password" name="regUser"/></td>
</tr>
<tr>
<td class="title">性别：</td>
<td class="content"><jsp:getProperty property="sex" name="regUser"/></td>
</tr>
<tr>
<td class="title">爱好：</td>
<td class="content">
<%
String[] hobbies=regUser.getHobbies();
for(String h:hobbies){
%>
<%=h%>
<%
}%>
</td>
</tr>
<tr>
<td class="title">邮箱：</td>
<td class="content"><jsp:getProperty property="email" name="regUser"/></td>
</tr>
<tr>
<td class="title">自我介绍：</td>
<td class="content"><jsp:getProperty property="introduce" name="regUser"/></td>
</tr>

</table>
</center>
</body>
</html>