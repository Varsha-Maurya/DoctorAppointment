import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.data.DoctorDB;
import com.models.Doctor;

/**
 * Servlet implementation class Doctor Search
 */
@WebServlet(name = "doctorDetailsView", urlPatterns = { "/doctorDetailsView" })
public class DoctorDetailsController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public DoctorDetailsController() {
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
		System.out.println("welcome to doctor details method");
		String url = "";
		Integer doctorId=Integer.parseInt(request.getParameter("doctorDetail"));
		Doctor doctor = DoctorDB.getDoctorDetail(doctorId);
		request.setAttribute("doctor", doctor);
		url = "/DoctorDetails.jsp";
		request.getRequestDispatcher(url).forward(request, response);

	}
}
