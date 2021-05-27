<%-- 
    Document   : page1
    Created on : May 27, 2021, 8:06:40 PM
    Author     : George.Pasparakis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <!-- 
        http://localhost:8080/MyFirstHibernateWebApp/page1.jsp?username=admin
        -->
        <% 
            username = request.getParameter("username");
            if(!username.equals("admin")) {
                throw new Exception("Unauthorized"); // username == jmor
            } else {
                secretKey = "1234";
                request.setAttribute("secret-key", secretKey);
            }
        %>
        <% 
//            RequestDispatcher rd = request.getRequestDispatcher("page2.jsp");
//            rd.forward(request, response);

              response.sendRedirect("page2.jsp?username=" + username + 
                      "&secret-key=" + secretKey);
             // http://localhost:8080/MyFirstHibernateWebApp/page2.jsp?username=admin&secret-key=1234
        
        %>
        <%! String username; String secretKey; %>
        
           
    </body>
</html>
