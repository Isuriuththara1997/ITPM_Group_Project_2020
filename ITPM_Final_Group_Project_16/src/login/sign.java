/**
 * SLIIT ID : IT18020236
 * @author : Y.R.S Nadeeshani
 * @version : 1.0
 */

package login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class sign
 */
@WebServlet("/sign")
public class sign extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		UserDAO user = new UserDAOImpl();

		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		String submittype = request.getParameter("submit");

		User u = user.getUser(username, password);

		if (submittype.equals("Login") && u != null && u.getUsername() != null) {
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			request.getRequestDispatcher("Home.jsp").forward(request, response);
		} else if (submittype.equals("Sign Up")) {
			u.setUsername(request.getParameter("uname"));
			u.setEmail(request.getParameter("email"));
			u.setPassword(request.getParameter("pass"));

			user.insertUser(u);

			request.getRequestDispatcher("index.jsp").forward(request, response);

		} else if (submittype.equals("Login") && username.equals("admin") && password.equals("admin")) {
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			request.getRequestDispatcher("Home.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}

	}

}
