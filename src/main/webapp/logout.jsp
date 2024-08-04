<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<body>
    <%
        // Retrieve the session object
        HttpSession currSession = request.getSession(false);
 
            if(currSession != null)
            {
            	currSession.invalidate();
            }
            // Redirect to the login page if the session is not valid
            response.sendRedirect("index.html");
     
    %>
</body>
</html>
