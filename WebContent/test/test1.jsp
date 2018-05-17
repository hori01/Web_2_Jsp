<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
$("#btn").click(function(){
<% 
Random r=new Random();
int num=r.nextInt(100);
%>

var n=<%= num %>;
$("#result").html(n);
});	
});
</script>
</head>
<body>
<h1>Ramdom 99</h1>
<h1 id="result">  </h1>
<button id="btn">Click</button>
</body>
</html>