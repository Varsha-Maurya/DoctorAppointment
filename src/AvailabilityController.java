
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.data.availabilityDB;
import com.models.Availability;

/**
 * Servlet implementation class Doctor Search
 */
@WebServlet(name = "scheduleAvailable", urlPatterns = { "/scheduleAvailable" })
public class AvailabilityController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public AvailabilityController() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "";
		String doctorID = request.getParameter("availability");
		System.out.println(doctorID);
		List<Availability> list = availabilityDB.getAvailability(doctorID);
		System.out.println(list);
		request.setAttribute("list", list);
		url = "/scheduleAvailable.jsp";
		request.getRequestDispatcher(url).forward(request, response);
	}
}
