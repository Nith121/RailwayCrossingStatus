package register;


	import java.sql.Connection;

	import java.sql.DriverManager;
	
	import java.sql.PreparedStatement;

	import java.sql.SQLException;


	public class RegisterDao {

	private String dbUrl = "jdbc:mysql://localhost:3306/railway"; private String dbUname = "root";

	private String dbPassword = "#Maneesh123";

	private String dbDriver = "com.mysql.cj.jdbc.Driver";

	publicvoidloadDriver(String dbDriver)

	{

	try {

	Class.forName(dbDriver);

	} catch (ClassNotFound Exceptione) { 
		// TODO Auto-generated catch block 
		e.printStackTrace();

	}

	}

	public Connection getConnection()

	{

	Connection con = null;

	try {

	con = DriverManager.getConnection(dbUrl, dbUname, dbPassword); }catch (SQL Exceptione) {

//		TODO Auto-generated catch block 
		e.printStackTrace();

	}

	return con;

	}



	public String insert(Member member)

	{

	loadDriver(dbDriver);

	Connection con = getConnection();

	String result = "Data entered successfully"; 
	String sql = "insert into user values(?,?,?)";

	Prepared Statementps;

	try {

	ps = con.prepareStatement(sql);

	ps.setString(1, member.getUname());
	ps.setString(2, member.getPassword());
	ps.setString(3, member.getEmail());
	ps.executeUpdate();
	} catch (SQL Exceptione) {

//		TODO Auto-generated catch block e.printStackTrace();

	result = "Data not entered";

	}

	return result;

	}

	}

