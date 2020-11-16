<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
class Emp {
  private String ename;
  private int sal;
  
  public void setEname(String ename) {
    this.ename = ename; 
  }
  public void setSal(int sal) {
    this.sal = sal; 
  }
  public String getEname() {
    return this.ename; 
  }
  public int getSal() {
    return this.sal; 
  }
}
String sql = "SELECT ename, salary*12+NVL(commission, 0) "
           + "FROM employee";
List<Emp> list = new ArrayList<>();
// 1~7

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h1>이름/ 연봉</h1>
<ul>
<%
for (Emp e : list) {
%>
  <li><%= e.getEname() %> : <%= e.getSal() %></li>
<%
}
%>
</ul>
</body>
</html>







