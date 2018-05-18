<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.iu.point.PointDAO"%>
<%@page import="com.iu.point.PointDTO"%>
<%@page import="java.util.ArrayList"%>    
<% 
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");

int num=Integer.parseInt( request.getParameter("num"));
PointDAO pointDAO=new PointDAO(); 
%>       
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css"></style>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/reset.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/common.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
</head>
<script type="text/javascript"></script>
<body>

<%@ include file="../temp/header.jsp" %>
<section id=main>
<h1>수정할 대상:<%=num  %>번 학생</h1>
<table class="table-bordered" style="width:100%">
<thead>
<tr>
<th> NUM </th>
<th> NAME </th>
<th> KOR </th>
<th> ENG </th>
<th> MATH </th>
<th> TOTAL </th>
<th> AVG </th>
</tr>
</thead>
<tbody>
<% 
ArrayList<PointDTO> ap=pointDAO.print(num);
for(PointDTO p:ap){
%>	
<tr>	
<td> <%=p.getNum()%> </td>	
<td> <%=p.getName()%> </td>	
<td> <%=p.getKor()%> </td>	
<td> <%=p.getEng()%> </td>	
<td> <%=p.getMath()%> </td>	
<td> <%=p.getTotal()%> </td>	
<td> <%=p.getAvg()%> </td>	
</tr>
<%
}
%>
</tbody>
</table>
<form action="./pointModUpdate.jsp" method="post"  id="from">
<label>NAME</label>
<input type="text" id="name" name="name" class="form-control" placeholder="NAME" required="required">
<label>KOR</label>
<input type="text" id="kor" name="kor" class="form-control" placeholder="KOR" required="required">
<label>ENG</label>
<input type="text" id="eng" name="eng" class="form-control" placeholder="ENG" required="required">
<label>MATH</label>
<input type="text" id="math" name="math" class="form-control" placeholder="MATH" required="required">
<input type="hidden" name="num" value="<%=num%>">
<input type="button" id="btn" class="btn-success" value="ENTER">
</form>
</section>
<%@ include file="../temp/footer.jsp" %>
</body>
</html>
