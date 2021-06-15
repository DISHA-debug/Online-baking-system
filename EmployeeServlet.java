import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class EmployeeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EmployeeDAO employeeDAO;

    public void init() {
    	employeeDAO = new EmployeeDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	
    	int registerEmployeeId = 0;
    	
        String firstName = request.getParameter("firstName");
       
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String repassword=request.getParameter("repassword");

        Employee employee = new Employee();
        employee.setFirstName(firstName);
        employee.setEmail(email);
        employee.setPassword(password);
      
		employee.setRepassword(repassword);

        try {
        	registerEmployeeId = employeeDAO.registerEmployee(employee);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(registerEmployeeId > 0) {
        request.setAttribute("firstName",employee.getFirstName());
          request.setAttribute("email", employee.getEmail());
          RequestDispatcher requestDispatcher = request.getRequestDispatcher("employeeDetails.jsp");
          requestDispatcher.forward(request, response);
        }
    }
}