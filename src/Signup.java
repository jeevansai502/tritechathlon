

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Signup() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String email_id,password,confirm_password;
		HttpSession session;

		session = request.getSession();

		email_id = request.getParameter("email");
		boolean valid = (email_id != "") &&  (email_id.matches("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,6}$"));
		if(!valid){
			session.setAttribute("signup_message", "<p style='margin-left:30%;margin-top:7%;color:red;'>Please check your details.</p>");
			response.sendRedirect("Signup_print"); 
		}

		password = request.getParameter("password");
		confirm_password = request.getParameter("confirm_password");
		valid = (password != "") && (confirm_password != "") && (password.equals(confirm_password));
		if(!valid){
			session.setAttribute("signup_message", "<p style='margin-left:30%;margin-top:7%;color:red;'>Please check your details.</p>");
			response.sendRedirect("Signup_print");
		}

		RequestDispatcher create_table = request.getRequestDispatcher("Signup_sql");
		create_table.forward(request, response);	}

}
