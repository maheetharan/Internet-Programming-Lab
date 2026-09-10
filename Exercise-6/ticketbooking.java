
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ticketbooking extends HttpServlet {

    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        String name = request.getParameter("name");
        String from = request.getParameter("from");
        String to = request.getParameter("to");
        String tickets = request.getParameter("tickets");

        PrintWriter out = response.getWriter();

        try {
            int ticketCount = Integer.parseInt(tickets);
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/Travelos",
                    "root",
                    "Maheetharan@#$_&091929"
            );

            String query =
                    "INSERT INTO travelos "
                    + "(name, from_place, to_place, number_of_tickets) "
                    + "VALUES (?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, name);
            ps.setString(2, from);
            ps.setString(3, to);
            ps.setInt(4, ticketCount);

            int i = ps.executeUpdate();

            if (i > 0) {

                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Booking Successful</title>");

                out.println("<style>");
                out.println("body {");
                out.println("background-color: black;");
                out.println("font-family: Arial;");
                out.println("text-align: center;");
                out.println("color: white;");
                out.println("}");

                out.println(".box {");
                out.println("width: 500px;");
                out.println("margin: 100px auto;");
                out.println("background: rgb(37, 213, 236);");
                out.println("padding: 30px;");
                out.println("border-radius: 20px;");
                out.println("color: black;");
                out.println("}");

                out.println("table {");
                out.println("margin: auto;");
                out.println("border-collapse: collapse;");
                out.println("}");

                out.println("td, th {");
                out.println("border: 1px solid black;");
                out.println("padding: 10px;");
                out.println("}");

                out.println("a {");
                out.println("display: inline-block;");
                out.println("margin-top: 20px;");
                out.println("padding: 10px 20px;");
                out.println("background: #003366;");
                out.println("color: white;");
                out.println("text-decoration: none;");
                out.println("border-radius: 10px;");
                out.println("}");
                out.println("</style>");

                out.println("</head>");
                out.println("<body>");

                out.println("<div class='box'>");

                out.println("<h1>Ticket Booked Successfully!</h1>");

                out.println("<h2>Booking Details</h2>");

                out.println("<table>");

                out.println("<tr>");
                out.println("<th>Name</th>");
                out.println("<td>" + name + "</td>");
                out.println("</tr>");

                out.println("<tr>");
                out.println("<th>From</th>");
                out.println("<td>" + from + "</td>");
                out.println("</tr>");

                out.println("<tr>");
                out.println("<th>To</th>");
                out.println("<td>" + to + "</td>");
                out.println("</tr>");

                out.println("<tr>");
                out.println("<th>Tickets</th>");
                out.println("<td>" + ticketCount + "</td>");
                out.println("</tr>");

                out.println("</table>");

                out.println("<a href='index.jsp'>Back to Home</a>");

                out.println("</div>");

                out.println("</body>");
                out.println("</html>");

            } else {

                out.println("<h1>Booking Failed!</h1>");
            }

            ps.close();
            con.close();

        } catch (NumberFormatException e) {

            out.println("<h2>Invalid number of tickets!</h2>");

        } catch (Exception e) {

            e.printStackTrace();

            out.println("<h2>Error occurred!</h2>");
            out.println("<p>" + e.getMessage() + "</p>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        processRequest(request, response);
    }
}