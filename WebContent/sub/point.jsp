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
<script type="text/javascript">
</script>
<body>

<%@ include file="../temp/header.jsp" %>
<section id=main>
<div>
<button onclick="location.href='./pointInput.jsp'" class="btn-success">POINT INPUT</button>
<button onclick="location.href='./pointDelete.jsp'" class="btn-success">POINT DELETE</button>
<button onclick="location.href='./pointSelect.jsp'" class="btn-success">POINT SELECT</button>
<button onclick="location.href='./pointMod.jsp'" class="btn-success">POINT MOD</button>
</div>
</section>

<%@ include file="../temp/footer.jsp" %>
</body>
</html>
