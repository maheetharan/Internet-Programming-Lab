```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ticket Booking</title>
</head>

<body style="background-color: black; margin:0;">

    <div style="background-color:#003366; padding:18px; text-align:center;">
        <a href="index.jsp"
           style="color:white; text-decoration:none; font-size:25px; margin:30px;">
            Home
        </a>

        <a href="train.jsp"
           style="color:white; text-decoration:none; font-size:25px; margin:30px;">
            Train
        </a>

        <a href="flight.jsp"
           style="color:white; text-decoration:none; font-size:25px; margin:30px;">
            Flight
        </a>

        <a href="bus.jsp"
           style="color:white; text-decoration:none; font-size:25px; margin:30px;">
            Bus
        </a>
    </div>

    <center>
        <form action="ticketbooking" method="post">

            <div style="
                width:450px;
                background:rgb(37, 213, 236);
                padding:30px;
                margin:120px;
                border-radius:20px;
            ">

                <table>
                    <tr>
                        <th colspan="2">
                            <h1>BOOK YOUR TICKET</h1>
                        </th>
                    </tr>

                    <tr>
                        <td style="color:rgb(0, 153, 255);">
                            <label>Name</label>
                        </td>

                        <td>
                            <input type="text"
                                   placeholder="Enter your name"
                                   name="name"
                                   required
                                   style="
                                       width:200px;
                                       height:35px;
                                       margin-bottom:20px;
                                       border-radius:15px;
                                       padding-left:10px;
                                       padding-right:10px;
                                   ">
                        </td>
                    </tr>

                    <tr>
                        <td style="color:rgb(0, 153, 255);">
                            <label>From</label>
                        </td>

                        <td>
                            <input type="text"
                                   placeholder="Enter the place"
                                   name="from"
                                   required
                                   style="
                                       width:200px;
                                       height:35px;
                                       margin-bottom:20px;
                                       border-radius:15px;
                                       padding-left:10px;
                                       padding-right:10px;
                                   ">
                        </td>
                    </tr>

                    <tr>
                        <td style="color:rgb(0, 153, 255);">
                            <label>To</label>
                        </td>

                        <td>
                            <input type="text"
                                   placeholder="Enter the place"
                                   name="to"
                                   required
                                   style="
                                       width:200px;
                                       height:35px;
                                       margin-bottom:20px;
                                       border-radius:15px;
                                       padding-left:10px;
                                       padding-right:10px;
                                   ">
                        </td>
                    </tr>

                    <tr>
                        <td style="color:rgb(0, 153, 255);">
                            <label>Tickets</label>
                        </td>

                        <td>
                            <input type="number"
                                   placeholder="Number of Tickets"
                                   name="tickets"
                                   min="1"
                                   required
                                   style="
                                       width:200px;
                                       height:35px;
                                       margin-bottom:20px;
                                       border-radius:15px;
                                       padding-left:10px;
                                       padding-right:10px;
                                   ">
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2" style="text-align:center;">
                            <input type="submit"
                                   value="BOOK"
                                   name="btn"
                                   style="
                                       padding:10px 30px;
                                       border:none;
                                       border-radius:10px;
                                       cursor:pointer;
                                   ">
                        </td>
                    </tr>

                </table>
            </div>

        </form>
    </center>

    <footer>
        <div style="
            background:#003366;
            color:white;
            text-align:center;
            padding:15px;
            margin-top:120px;
        ">
            @ 2026 TravelOS | Happy Journey 
        </div>
    </footer>

</body>
</html>
```
