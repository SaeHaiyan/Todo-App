import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CreateTaskServlet")
public class CreateTaskServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private final String JDBC_URL = "jdbc:mysql://localhost:3306/todo_db";
    private final String DB_USER = "root";
    private final String DB_PASSWORD = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String taskTitle = request.getParameter("title");
        String taskDescription = request.getParameter("description");
        String taskStatus = request.getParameter("status");

        try (Connection connection = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD)) {
            String sql = "INSERT INTO todos (title, description, completed) VALUES (?, ?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, taskTitle);
                statement.setString(2, taskDescription);
                statement.setBoolean(3, "completed".equalsIgnoreCase(taskStatus));
                statement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        // After task creation is successful
        response.sendRedirect("index.jsp?success=true");


    }
}
