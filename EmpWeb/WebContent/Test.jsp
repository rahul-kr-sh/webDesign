<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("oracle.jdbc.driver.OracleDriver"); //loading the class
String url="jdbc:oracle:thin:@localhost:1521:xe"; // database url
Connection conn=DriverManager.getConnection(url, "sapient", "sapient@123");


String sql="select * from employee ";
PreparedStatement preparedStatement=conn.prepareStatement(sql);



ResultSet resultSet=preparedStatement.executeQuery();
System.out.println("=============================================================");
System.out.printf("%15s%15s%10s%10s\n","Empployee Id","Employee name","sal","dept ID");
System.out.println("=============================================================");
while(resultSet.next()){
	System.out.printf("%15s%15s%10s%10s",resultSet.getInt(1),resultSet.getString(2),
			resultSet.getFloat(3),resultSet.getInt(4));
	System.out.println();

}
System.out.println("============================================================");
conn.close();


%>
</body>
</html>