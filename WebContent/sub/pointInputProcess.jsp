<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.ConnectException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
String name=request.getParameter("name");
int kor=Integer.parseInt(request.getParameter("kor"));
int eng=Integer.parseInt(request.getParameter("eng"));
int math=Integer.parseInt(request.getParameter("math"));
int total=kor+eng+math;
int avg=total/3;

String user="USER01";
String password="USER01";
String url="jdbc:oracle:thin:@192.168.10.161:1521:xe";
String driver="oracle.jdbc.driver.OracleDriver";

Class.forName(driver);
Connection con= DriverManager.getConnection(url, user, password);

String sql="insert into point2 values(1,?,?,?,?,?,?)";

PreparedStatement st=con.prepareStatement(sql);

st.setString(1, name);
st.setInt(2, kor);
st.setInt(3, eng);
st.setInt(4, math);
st.setInt(5, total);
st.setDouble(6, avg);

int result=st.executeUpdate();
st.close();
con.close();


if(result>0){ sql="입력 성공";}
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
<h1>NAME:<%=name %></h1>
<h1>KOR:<%=kor %></h1>
<h1>ENG:<%=eng %></h1>
<h1>MATH:<%=math %></h1>
<h1>TOTAL:<%=total %></h1>
<h1>AVG:<%=avg %></h1>
<h1>Input:<%=sql  %></h1>
</section>
<%@ include file="../temp/footer.jsp" %>
</body>
</html>