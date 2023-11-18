package adminlogin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

import java.io.PrintWriter;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.PreparedStatement;

import java.sql.ResultSet;

import java.sql.SQLException;



import javax.servlet.RequestDispatcher; 
import javax.servlet.ServletException; 
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AdminLogin")

publicclassAdminLoginextendsHttpServlet
{
	privatestaticfinallongserialVersionUID = 1L; 
	publicAdminLogin() {

		super();

	}






protectedvoiddoPost(HttpServletRequestrequest, HttpServletResponseresponse) throwsServletException, IOException {

try{

PrintWriterout= response.getWriter();
Class.forName("com.mysql.cj.jdbc.Driver"); 
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/railway","root ","Anusha@2000");

String uname = request.getParameter("uname"); 
String pass = request.getParameter("password");

PreparedStatementps = con.prepareStatement("SELECT uname FROM admin WHERE uname=? AND password=?");

ps.setString(1,uname);

ps.setString(2,pass);

ResultSetrs = ps.executeQuery();


if(rs.next()) {

RequestDispatcherrd = request.getRequestDispatcher("adminhome.jsp");

rd.forward(request, response);

}

else {

out.println("<font color=red size=4>Login Failed!!!<br>");

out.println("<font color=red size=2>Invalid user name or password<br>"); 
out.println("<a href=login.jsp>Try Again</a>"); }

}catch (ClassNotFoundExceptione) {

e.printStackTrace();

} catch (SQLExceptione) {

//	TODO Auto-generated catch block
	e.printStackTrace();

}

}

}
