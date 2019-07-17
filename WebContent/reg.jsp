<%@ page language="java" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>注册</title>
</head>
<body>
<h1>用户注册</h1>
<hr>
<form name="regForm" action="servlet/HelloServlet" method="post">
<table>
<tr>
	<td class="label">用户名：</td>
	<td class="controller"><input type="text" name="user" ></td>
</tr>
<tr>
	<td class="label">密码：</td>
	<td class="controller"><input type="password" name="password" ></td>
</tr>
<tr>
	<td class="label">确认密码：</td>
	<td class="controller"><input type="password" name="repassword" ></td>
</tr>
<tr>
	<td class="label">电子邮箱：</td>
	<td class="controller"><input type="text" name="email" ></td>
</tr>
<tr>
	<td class="label">性别：</td>
	<td class="controller"><input type="radio" name="sex" value="男">男
	<input type="radio" name="sex" value="女">女</td>
</tr>
<tr>
	<td class="label">爱好：</td>
	<td class="controller"><input type="checkbox" name="hobby" value="basketball">篮球
	<input type="checkbox" name="hobby" value="badminton">羽毛球
	<input type="checkbox" name="hobby" value="pingpong">乒乓球
	<input type="checkbox" name="hobby" value="swim">游泳</td>
</tr>
<tr>
	<td class="label">自我介绍：</td>
	<td name="introduce"><textarea rows="10" cols="20" ></textarea></td>
</tr>
<tr>
<td>
&nbsp;
</td>
<td>
<input type="submit" value="注册">
</td></tr>
</form>
</table>

</body>
</html>