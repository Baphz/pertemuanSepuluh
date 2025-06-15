<%-- 
    Document   : login
    Created on : 13 Jun 2025, 23.20.18
    Author     : baphien
--%>

<%@page import="tokoatk.User"%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    User user = new User();
    boolean sukses = user.login(username, password);

    if (sukses) {
        session.setAttribute("username", user.getUsername());
        session.setAttribute("fullname", user.getFullname());
        response.sendRedirect("home.view.jsp");
    } else {
        response.sendRedirect("formlogin.jsp?error=1");
    }
%>

