<%-- 
    Document   : useredit
    Created on : 14 Jun 2025, 07.53.39
    Author     : baphien
--%>

<%@page import="tokoatk.User"%>
<%
    String username = request.getParameter("username");
    String fullname = request.getParameter("fullname");
    String password = request.getParameter("password");

    User user = new User();
    user.username = username;
    user.fullname = fullname;

    if (password != null && !password.trim().isEmpty()) {
        user.edit(fullname, password);
    } else {
        user.edit(fullname);
    }

    response.sendRedirect("userlist.jsp");
%>
