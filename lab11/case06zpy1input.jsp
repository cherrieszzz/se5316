<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html><body >
<form action="case06zpy2pane.jsp" method="post"name="form">
	输入你的名字：<br><input type="text"name="name">
	<br>输入留言标题：<br><input type="text"name="title">
	<br>输入留言内容：<br><textarea name="messages" ROWs="10"COLS="36"WRAP="hard"></textarea>
	<input type="submit"value="提交信息"name="submit">
</form>
<form action="case06zpy3showmessage.jsp" method="post"name="form1">
	<input type="submit"value="查看留言板"name="look">
</form>
</body></html>