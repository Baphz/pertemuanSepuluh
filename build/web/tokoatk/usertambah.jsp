<%-- 
    Document   : usertambah
    Created on : 13 Jun 2025, 23.22.35
    Author     : baphien
--%>

<%@page import="tokoatk.User"%>
<%
    String username = request.getParameter("username").toString();
    String fullname = request.getParameter("fullname").toString();
    String password = request.getParameter("password").toString();
    
    User user = new User();
    user.username = username;
    user.fullname = fullname;
    user.tambah(password);
    
    response.sendRedirect("userlist.jsp");
%>
