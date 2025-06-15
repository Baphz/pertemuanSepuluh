<%-- 
    Document   : formuseredit
    Created on : 14 Jun 2025, 07.51.17
    Author     : baphien
--%>

<%@page import="tokoatk.User"%>
<%
    String username = request.getParameter("username");
    User user = new User();
    user.baca(username);

    request.setAttribute("user", user);
    RequestDispatcher dispatcher = request.getRequestDispatcher("formuseredit.view.jsp");
    dispatcher.forward(request, response);
%>
