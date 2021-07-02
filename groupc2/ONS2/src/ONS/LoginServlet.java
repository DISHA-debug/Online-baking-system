package ONS;
import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LoginDao loginDao;

    public void init() {
        loginDao = new LoginDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String password = request.getParameter("password");
        Employee loginBean = new Employee();
        loginBean.setFirstName(firstName);
        loginBean.setPassword(password);

        try {
            if (loginDao.validate(loginBean)) {
                //HttpSession session = request.getSession();
                // session.setAttribute("firstName",firstName);
                response.sendRedirect("loginSuccess.html");
            	System.out.println("Login Successfully");
            } else {
                HttpSession session = request.getSession();
                //session.setAttribute("firstName", firstName);
                response.sendRedirect("notLogin.html");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
