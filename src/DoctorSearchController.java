import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.data.DoctorDB;
import com.data.UserDB;
import com.models.Doctor;
import com.models.User;

/**
 * Servlet implementation class Doctor Search
 */
@WebServlet(name = "doctorsearch", urlPatterns = { "/doctorsearch" })
public class DoctorSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public DoctorSearchController() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("welcome to doctor search method");
		String url = "";
		String specialization = request.getParameter("specialization");
		String location = request.getParameter("hospitalAddress");
		List<Doctor> list = DoctorDB.getDoctors(specialization, location);
		System.out.println(list);
		request.setAttribute("list", list);
		url = "/DoctorSearchResults.jsp";
		request.getRequestDispatcher(url).forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		session.invalidate();
		response.sendRedirect(request.getContextPath() + "/login.jsp");
	}
}
