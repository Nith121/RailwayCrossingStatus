package favorite;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

import javax.servlet.ServletException; 
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection; 
import java.sql.DriverManager;

import java.sql.PreparedStatement;

import java.sql.SQLException;


@WebServlet("/AddToFavorite")

publicclassAddToFavoriteextendsHttpServlet {

protectedvoiddoPost(HttpServletRequestrequest, HttpServletResponseresponse)

throws ServletException, IOException {

String itemId = request.getParameter("itemId");



//	Perform necessary operations to add the item to favorites
try {

//	Establish database connection

Class.forName("com.mysql.jdbc.Driver"); 
Connection connection =DriverManager.getConnection("jdbc:mysql://localhost:3306/railway", "root", "Anusha@2000");


// Prepare SQL statement to insert the favorite crossing

String sql = "INSERT INTO favorites (id, Name, Address, Landmark, Trainschedule, pname, status) " +

"SELECT id, Name, Address, Landmark, Trainschedule, pname, status " + "FROM adminhome WHERE id = ?";

PreparedStatementstatement = connection.prepareStatement(sql); 
statement.setString(1, itemId);


// Execute the SQL statement

introwsAffected = statement.executeUpdate();



//	Close the database connection 
statement.close(); 
connection.close();



//	Redirect the user back to the user home page 
response.sendRedirect("userhome.jsp");

} catch (ClassNotFoundException | SQLExceptione)
{ 
	e.printStackTrace();

}

}

}
