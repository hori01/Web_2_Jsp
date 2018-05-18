<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
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
<form action="./pointInputProcess.jsp" method="post"  id="from">
<label>NAME</label>
<input type="text" id="name" name="name" class="form-control" placeholder="NAME" required="required">
<label>KOR</label>
<input type="text" id="kor" name="kor" class="form-control" placeholder="KOR" required="required">
<label>ENG</label>
<input type="text" id="eng" name="eng" class="form-control" placeholder="ENG" required="required">
<label>MATH</label>
<input type="text" id="math" name="math" class="form-control" placeholder="MATH" required="required">
<input type="submit" id="btn" class="btn-success" value="ENTER">
</form>
</section>
<%@ include file="../temp/footer.jsp" %>
</body>
</html>
