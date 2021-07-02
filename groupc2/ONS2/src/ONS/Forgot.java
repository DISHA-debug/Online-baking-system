package ONS;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Forgot
 */
@WebServlet("/Forgot")
public class Forgot extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ForgotDao forgotDao;
   	
	 public void init() {
		 forgotDao = new ForgotDao();
	    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	
    	int registerEmployeeId = 0;
    	
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        Employee employee = new Employee();
        
        employee.setEmail(email);
        employee.setPassword(password);

        try {
        	registerEmployeeId = forgotDao.changePass(employee);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(registerEmployeeId > 0) {
        
          
          RequestDispatcher requestDispatcher = request.getRequestDispatcher("update.jsp");
          requestDispatcher.forward(request, response);
        }
    }
}