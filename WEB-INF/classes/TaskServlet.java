import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TaskServlet")
public class TaskServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private final String JDBC_URL = "jdbc:mysql://localhost:3306/todo_db";
    private final String DB_USER = "root";
    private final String DB_PASSWORD = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String task = request.getParameter("task");
        String description = request.getParameter("description");
        String status = request.getParameter("status");

        try (Connection connection = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD)) {
            String sql = "INSERT INTO todos (title, description, completed) VALUES (?, ?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, task);
                statement.setString(2, description);
                statement.setBoolean(3, "completed".equalsIgnoreCase(status));
                statement.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("index.jsp");
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try (Connection connection = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD)) {
            // Fetch all tasks
            String sql = "SELECT * FROM todos";
            try (PreparedStatement statement = connection.prepareStatement(sql);
                 ResultSet resultSet = statement.executeQuery()) {
                 
                int rowNum = 1;
                while (resultSet.next()) {
                    out.println("<tr>");
                    out.println("<td>" + rowNum + "</td>");
                    out.println("<td>" + resultSet.getString("title") + "</td>");
                    out.println("<td>" + resultSet.getString("description") + "</td>");
                    out.println("<td>" + (resultSet.getBoolean("completed") ? "Completed" : "Pending") + "</td>");
                    out.println("<td>");
                    out.println("<a href='EditTaskServlet?id=" + resultSet.getInt("id") + "' class='btn' style='color: #1E4174; font-weight: bold;'>Edit</a> | ");
                    out.println("<a href='DeleteTaskServlet?id=" + resultSet.getInt("id") + "' class='btn' style='color: #1E4174; font-weight: bold;'>Delete</a>");
                    out.println("</td>");
                    out.println("</tr>");
                    rowNum++;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}