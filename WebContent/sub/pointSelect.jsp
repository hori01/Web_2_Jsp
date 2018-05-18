<%@page import="java.util.ArrayList"%>
<%@page import="com.iu.point.PointDAO"%>
<%@page import="com.iu.point.PointDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
PointDAO pointDAO= new PointDAO(); 
int num=pointDAO.select();
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
<script type="text/javascript">
</script>
<body>

<%@ include file="../temp/header.jsp" %>
<section id=main>

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
ArrayList<PointDTO> ap=pointDAO.print();
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

<form action="./pointSelectProcess.jsp">
검색할 번호를 고르시오.
<select name="num">
<% for(int i=1;i<=num;i++){%>
<option  value="<%=i %>"><%=i %></option>
<%	
} 
%>
</select>
<input type="submit" id="btn2" class="btn-success" value="ENTER">
</form>
</section>
<%@ include file="../temp/footer.jsp" %>
</body>
</html>
