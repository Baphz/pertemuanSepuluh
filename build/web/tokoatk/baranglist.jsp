<%-- 
    Document   : baranglist
    Created on : 13 Jun 2025, 23.54.46
    Author     : baphien
--%>

<%@ page import="java.util.ArrayList" %>
<%@ page import="tokoatk.Barang" %>
<%
    // Ambil semua barang dari model
    ArrayList<Barang> list = Barang.getList();

    // Set hasilnya ke atribut untuk dikonsumsi oleh view
    request.setAttribute("list", list);

    // Arahkan ke view JSP
    RequestDispatcher dispatcher = request.getRequestDispatcher("baranglist.view.jsp");
    dispatcher.forward(request, response);
%>

