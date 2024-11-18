import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EditTaskServlet")
public class EditTaskServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private final String JDBC_URL = "jdbc:mysql://localhost:3306/todo_db";
    private final String DB_USER = "root";
    private final String DB_PASSWORD = "";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int taskId = Integer.parseInt(request.getParameter("id"));
        try (Connection connection = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD)) {
            String sql = "SELECT * FROM todos WHERE id = ?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setInt(1, taskId);
                ResultSet resultSet = statement.executeQuery();

                if (resultSet.next()) {
                    request.setAttribute("taskId", taskId);
                    request.setAttribute("taskTitle", resultSet.getString("title"));
                    request.setAttribute("taskDescription", resultSet.getString("description"));
                    request.setAttribute("taskStatus", resultSet.getBoolean("completed") ? "completed" : "pending");
                    request.getRequestDispatcher("/editTask.jsp").forward(request, response);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
