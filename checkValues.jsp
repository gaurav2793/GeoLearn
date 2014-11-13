<%@ page import="java.io.*,java.util.*,java.sql.*"%> 
<%@ page import="javax.servlet.http.*,javax.servlet.*" %> 
<%@ page import="java.util.ArrayList" %> 

<%!Connection con; %> 
<%!Statement s; %> 
<%!ResultSet rs; %> 
<%
try {
	Class.forName("com.mysql.jdbc.Driver").newInstance();  
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/datesheet","root","gaurav"); 
	s=con.createStatement(); 
} catch(Exception e) {
		out.println(e);
}
int semester = request.getParameter("semester");
String course_id = request.getParameter("course_id");
int selected_day = request.getParameter("selected_day");
int selected_time = request.getParameter("selected_time");
out.println(semester+' '+course_id+' '+selected_day+' '+selected_time);

%>