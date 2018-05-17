<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css"></style>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
</script>
<style type="text/css">
table{
border:1px solid black; 
border-collapse:collapse; 
}
td{
height:20px;
width:20px;
border:1px solid black; 
text-align:center; 
}
</style>
</head>
<body>
	<table>
		<%
			int r = Integer.parseInt(request.getParameter("r"));
			int c = Integer.parseInt(request.getParameter("c"));
			int count=0;
			for (int i = 0; i < r; i++) {
				
		%>
		<tr>
			<%
				for (int j = 0; j < c; j++) {
					count++;
			%>
			<td>
			<%= count %>
			</td>
			<% } %>
		</tr>
		<%  }  %>
	</table>
</body>
</html>