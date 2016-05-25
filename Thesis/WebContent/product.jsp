<%@page import="java.io.PrintWriter"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
.name {
	font-weight: bold;
	font-size: 36px;
}
.gnrl {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.center1 {
	text-align: center;
}
.center1 table {
	font-family: Arial, Helvetica, sans-serif;
	font-size: x-large;
	font-weight: bold;
}
normal {
	font-weight: normal;
}
normal {
	font-weight: normal;
}
normal {
	font-weight: normal;
}
normal {
	font-family: Arial, Helvetica, sans-serif;
}
.right {
	text-align: right;
}
.norm {
	font-family: Arial, Helvetica, sans-serif;
}
</style>
</head>

<body>
<table width="993" height="102" border="0">
  <tr>
    <td width="251" height="96"><img src="images/head.jpg" width="251" height="88" alt="Logo" /></td>
    <td width="726" class="right">24X7 Customer Support - <a href="contact.jsp">Contact us</a> | <a href="main.jsp">Home</a> |
      <% if(session.getAttribute("name")==null) {
			%>
      <a href="login.jsp">Login</a>
      <%} else {
				%>
      <a href="logout.jsp">Logout</a>
      <%}%></td>
  </tr>
</table>
<hr />
<p>
  <%@ page language="java"%>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="java.sql.DriverManager.*"%>
  <%
		String pid=request.getParameter("product");
  		
         
		String hname="Grand";
		 PreparedStatement ps;
        Connection con;
        ResultSet rs= null;
       Class.forName("com.mysql.jdbc.Driver");
       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?autoReconnect=true&useSSL=false",
				"root", "root");
         Statement st=con.createStatement();
		ps=con.prepareStatement("select * from mtable where prod_id=?");
		 ps.setString(1,pid);
		 rs=ps.executeQuery();
		 while(rs.next())
		 {
		 %>
<p class="name">
<%=rs.getString(2)%> <%=rs.getString(3)%> 
</p>
         <%}
		 ps=con.prepareStatement("select * from pics where pic_id=?");
		 ps.setString(1,pid);
		 rs=ps.executeQuery();
		 while(rs.next())
		 {
		 %>
</p>
<table width="997" height="399" border="0">
  <tr>
    <td width="358" class="center1"><img src=<%=rs.getString(2)%> width="300" height="300" alt=hname/></td>
    <%}
    ps=con.prepareStatement("select * from mtable where prod_id=?");
		 ps.setString(1,pid);
		 rs=ps.executeQuery();
		 while(rs.next())
		 {
		 %>
    <td width="623" class="center1"><table width="466" height="200" border="0">
      <tr>
        <td width="179" class="center1">Brand Name :</td>
        <td width="277" class="normal"><%=rs.getString(2)%></td>
      </tr>
      <tr>
        <td class="center1">Model :</td>
        <td><%=rs.getString(3)%></td>
      </tr>
      <tr>
        <td class="center1">Price :</td>
        <td><%=rs.getString(4)%></td>
      </tr>
      <%}%>
    </table>
    <p>
    <form action="buy.jsp" > 
<input type="hidden" name="name" value=<%=pid%> /> 
<input type="image" src="images/tel-domain-buy-logo.jpg" name="buy" value="grand" /> 
</form></p></td>
  </tr>
</table>
<p class="gnrl">GENERAL FEATURES</p>
<% 
rs.close();
ps=con.prepareStatement("select * from gnrl_specs where gs_id=?");
		 ps.setString(1,pid);
		 rs=ps.executeQuery();
		 %>
         <%
          while(rs.next())
		 {
		 %>
         <table width="630" border="1" cellspacing="0">
  <tr>
    <td width="127" class="norm">Screen Size</td>
    <td width="493"><%=rs.getString(2)%></td>
  </tr>
  <tr>
    <td class="norm">Operating System</td>
    <td><%=rs.getString(3)%></td>
  </tr>
  <tr>
    <td class="norm">Processor Speed</td>
    <td><%=rs.getString(4)%></td>
  </tr>
  <tr>
    <td class="norm">System Memory (RAM)</td>
    <td><%=rs.getString(5)%></td>
  </tr>
  <tr>
    <td class="norm">Processor Model</td>
    <td><%=rs.getString(6)%></td>
  </tr>
</table>
<p class="gnrl">
  <%}%>
  <% 
rs.close();
ps=con.prepareStatement("select * from dimension where dim_id=?");
		 ps.setString(1,pid);
		 rs=ps.executeQuery();
          while(rs.next())
		 {
		 %>
<p class="gnrl">DIMENSIONS</p>
<table width="629" border="1" cellspacing="0">
  <tr>
    <td width="127" class="norm">Height</td>
    <td width="492"><%=rs.getString(2)%></td>
  </tr>
  <tr>
    <td class="norm">Width</td>
    <td><%=rs.getString(3)%></td>
  </tr>
  <tr>
    <td class="norm">Weight</td>
    <td><%=rs.getString(4)%></td>
  </tr>
</table>
<p class="gnrl">
  <%}%>
  <% 
rs.close();
ps=con.prepareStatement("select * from display where disp_id=?");
		 ps.setString(1,pid);
		 rs=ps.executeQuery();
          while(rs.next())
		 {
		 %>
<p class="gnrl">DISPLAY</p>
<table width="629" border="1" cellspacing="0">
  <tr>
    <td width="127" class="norm">Touch Screen</td>
    <td width="492"><%=rs.getString(2)%></td>
  </tr>
  <tr>
    <td class="norm">Display Type</td>
    <td><%=rs.getString(3)%></td>
  </tr>
  <tr>
    <td class="norm">Graphics Type</td>
    <td><%=rs.getString(4)%></td>
  </tr>
  <tr>
    <td class="norm">Graphics Processing</td>
    <td><%=rs.getString(5)%></td>
  </tr>
</table>
<p class="gnrl">
  <%}%>
  <% 
rs.close();
ps=con.prepareStatement("select * from memory where mem_id=?");
		 ps.setString(1,pid);
		 rs=ps.executeQuery();
          while(rs.next())
		 {
		 %>
<p class="gnrl">MEMORY</p>
         <table width="628" border="1" cellspacing="0">
  <tr>
    <td width="126" class="norm">Cache Memory</td>
    <td width="492"><%=rs.getString(2)%></td>
  </tr>
  <tr>
    <td class="norm">Media Card Reader</td>
    <td><%=rs.getString(3)%></td>
  </tr>
  <tr>
    <td class="norm">System Memory RAM Expandable To</td>
    <td><%=rs.getString(4)%></td>
  </tr>
  <tr>
    <td class="norm">Type of Memory (RAM)</td>
    <td><%=rs.getString(5)%></td>
  </tr>
  <tr>
    <td class="norm">System Memory RAM Speed</td>
    <td><%=rs.getString(6)%></td>
  </tr>
</table>
<p>
  <%}%>
  <% 
rs.close();
ps=con.prepareStatement("select * from warranty where war_id=?");
		 ps.setString(1,pid);
		 rs=ps.executeQuery();
          while(rs.next())
		 {
		 %>
<span class="gnrl">WARRANTY</span> </p><table width="627" border="1" cellspacing="0">
  <tr>
    <td width="125" class="norm">Parts </td>
    <td width="486"><%=rs.getString(2)%></td>
  </tr>
  <tr>
    <td class="norm">Labor</td>
    <td><%=rs.getString(3)%></td>
  </tr>
</table>
  <%}%>

</body>
</html>