package ONS;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ForgotDao {
	public int changePass(Employee employee) throws ClassNotFoundException {
        String PASSWORD_UPDATE_SQL = "update employee set password=? where email=? ;" ;

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        //Step 1: Established the connection with database
      try (Connection connection = DriverManager
     .getConnection("jdbc:mysql://localhost:3307/onlinebankingsystem? useSSL=false", "root", "");

        // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement =  connection.prepareStatement(PASSWORD_UPDATE_SQL)) {       
    	   
            preparedStatement.setString(2,employee.getEmail());
            preparedStatement.setString(1,employee.getPassword());

        // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();
            
            
        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}


