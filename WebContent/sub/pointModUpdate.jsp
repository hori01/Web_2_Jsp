<%@page import="com.iu.point.PointDAO"%>
<%@page import="com.iu.point.PointDTO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
String name=request.getParameter("name");

PointDTO pointDTO=new PointDTO();
PointDAO pointDAO=new PointDAO();

int num=Integer.parseInt(request.getParameter("num"));
int kor=Integer.parseInt(request.getParameter("kor"));
int eng=Integer.parseInt(request.getParameter("eng"));
int math=Integer.parseInt(request.getParameter("math"));
int total=kor+eng+math;
double avg=total/3;

pointDTO.setNum(num);
pointDTO.setName(name);
pointDTO.setKor(kor);
pointDTO.setEng(eng);
pointDTO.setMath(math);
pointDTO.setTotal(total);
pointDTO.setAvg(avg);



int result=pointDAO.update(pointDTO);

String sql=null;
if(result>0){sql="입력 성공";}
else{sql="입력 실패";};
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
<section id="main">
<h1>Input:<%=sql  %></h1>
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
<tr>	
<td> <%=num %></td>	
<td> <%=name %> </td>	
<td> <%=kor %> </td>	
<td> <%=eng %> </td>	
<td> <%=math %> </td>	
<td> <%=total %> </td>	
<td> <%=avg %> </td>	
</tr>
</tbody>
</table>
</section>
<%@ include file="../temp/footer.jsp" %>
</body>
</html>