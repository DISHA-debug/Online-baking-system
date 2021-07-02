<%@ page language="java" import="java.sql.*"%><b><center>     

        <%

            String email = request.getParameter("email");

            String pass = request.getParameter("pass");

            try {

                Class.forName("com.mysql.jdbc.Driver");

                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/onlinebankingsystem? useSSL=false", "root", "");

                Statement st = con.createStatement();

                ResultSet rs = st.executeQuery("select * from onlinebankingsystem.admin");

                int x = 0;

                while (rs.next()) {

                    if ((rs.getString("email").equals(email)) && rs.getString("pass").equals(pass)) {

                        String stp = rs.getString("utype");

                        if (stp.equals("admin")) {

                            x = 1;

                            break;

                        } else {

                            x = 2;

                            break;

                        }

                    }

                }

                if (x == 2) {

                    response.sendRedirect("home.jsp");

                } else if (x == 1) {

                    response.sendRedirect("admin.html");

                } else {

                    out.println("Either you enter Invalid UserName or Password! Please Try Again");

        %>

        <jsp:include page="admin.html" />

        <%}

 

            } catch (Exception e) {

                out.println(e);

            }

 

            session.setAttribute("username", email);

        %> 