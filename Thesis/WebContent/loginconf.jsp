<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>

	<%@ page language="java"%>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="java.sql.DriverManager.*"%>
	<%
		PreparedStatement ps;
		Connection conn;
		ResultSet rs = null;
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?autoReconnect=true&useSSL=false",
				"root", "root");

		Statement st = conn.createStatement();
	%>
	<%
		String name = request.getParameter("id");

		session.setAttribute("name", name);
		String password = request.getParameter("password");
	%>

	<%
		String sql = "SELECT *  from register where userid = ? ";

		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			rs = ps.executeQuery();
			if (rs.next()) {
				if (rs.getString(3).equals(password)) {
	%>

	<jsp:forward page="loginsuccess.jsp" />

	<%
		} else {
	%>

	<jsp:forward page="loginfail.jsp" />
	<%
		}
			} else

				rs.close();
			ps.close();
			conn.close();

		} catch (Exception e) {
			out.println(e);
		}
	%>



</body>
</html>