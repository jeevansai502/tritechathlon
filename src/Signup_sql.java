

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Signup_sql
 */
@WebServlet("/Signup_sql")
public class Signup_sql extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Signup_sql() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session;
		try{

			session = request.getSession();
			Class.forName("com.mysql.jdbc.Driver");	

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/designx", "root", "jeevan");
			String name = request.getParameter("username");
			String email = request.getParameter("email");
			String password = request.getParameter("password");			

			String query= "insert ignore into user_details values(?,?)";
			PreparedStatement ps = con.prepareStatement(query);		
			ps.setString(1, name);
			ps.setString(2, email);


			if(ps.executeUpdate() == 0){

				session.setAttribute("signup_message","<p style='margin-left:20%;margin-top:7%;color:red;'>Other account with same email or username exists.</p>" );				
				response.sendRedirect("Signup_print");

			}

			query= "insert ignore into user_access values(?,?)";
			ps = con.prepareStatement(query);		

			ps.setString(1, email);
			ps.setString(2, password);

			if(ps.executeUpdate() == 0){
				session.setAttribute("signup_message","<p style='margin-left:25%;margin-top:7%;color:red;'>Please check your password.</p>" );				
				response.sendRedirect("Signup_print");

			}else{
				session.setAttribute("signup_success","<p style='margin-left:25%;color:black;'>Signup successful.<br>You can now login.</p>" );
				response.sendRedirect("Signup_print");

			}
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}	}

}
