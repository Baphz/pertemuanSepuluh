<%-- 
    Document   : logout.jsp
    Created on : 14 Jun 2025, 11.30.12
    Author     : baphien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<%
    session.invalidate(); // Menghapus semua data sesi
    response.sendRedirect("formlogin.jsp"); // Arahkan kembali ke halaman login
%>

