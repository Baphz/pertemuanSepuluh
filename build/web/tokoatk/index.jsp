<%-- 
    Document   : index
    Created on : 13 Jun 2025, 23.18.49
    Author     : baphien
--%>

<%
    if(session.getAttribute("fullname")==null) {
        response.sendRedirect("formlogin.jsp");
    } else {
        response.sendRedirect("home.jsp");
    }
%>
