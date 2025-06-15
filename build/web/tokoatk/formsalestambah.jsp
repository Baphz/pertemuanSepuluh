<%-- 
    Document   : formsalestambah
    Created on : 13 Jun 2025, 23.58.51
    Author     : baphien
--%>

<%@ page import="tokoatk.Sales" %>
<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("formlogin.jsp");
        return;
    }

    String id = request.getParameter("id");
    Sales sales = new Sales();

    if (id == null || id.isEmpty()) {
        String username = session.getAttribute("username").toString();
        if (!sales.tambah(username)) {
            out.println("<p style='color:red;'>? Gagal membuat data penjualan baru.</p>");
            return;
        }
    } else {
        if (!sales.baca(id)) {
            out.println("<p style='color:red;'>? Sales ID tidak ditemukan.</p>");
            return;
        }
    }

    request.setAttribute("sales", sales);
    RequestDispatcher dispatcher = request.getRequestDispatcher("formsalestambah.view.jsp");
    dispatcher.forward(request, response);
%>

