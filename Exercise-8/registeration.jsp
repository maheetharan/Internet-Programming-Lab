<%-- 
    Document   : registeration
    Created on : 3 Sep, 2026, 2:11:31 PM
    Author     : 24uad118
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String name = request.getParameter("username");
           String ph = request.getParameter("phone");
           String email = request.getParameter("email");
           String card = request.getParameter("card");
           String password = request.getParameter("password");
        %>
        <div>
            <table>
                <th>Person Details</th>
                <tr>
                    <td>
                        Name:
                    </td>
                    <td>
                        <%= name %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Phone No:
                    </td>
                    <td>
                        <%= ph %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Email:
                    </td>
                    <td>
                        <%= email %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Credit Card:
                    </td>
                    <td>
                        <%= password %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Credit card:
                    </td>
                    <td>
                        <%= card %>
                    </td>
                </tr>
            </table>
        </div>
    </body>
    <style>
        div{
            margin-top: 150px;
            margin-left: 350px;
            background-color:burlywood;
            padding-left: 50px;
            width: 300px;
            height: 250px;
            border-radius: 15px;
            cellspacing:10px;
            padding-top: 100px;
        }
    </style>
</html>
