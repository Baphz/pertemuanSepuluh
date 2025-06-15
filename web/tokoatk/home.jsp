<%-- 
    Document   : home
    Created on : 13 Jun 2025, 23.20.44
    Author     : baphien
--%>

<%
    String fullname = session.getAttribute("fullname").toString();
    
    request.setAttribute("fullname", fullname);
    
    RequestDispatcher dispacher = request.getRequestDispatcher("home.view.jsp");
    dispacher.forward(request, response);
%>
