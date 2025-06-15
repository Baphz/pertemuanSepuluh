<%-- 
    Document   : baranghapus
    Created on : 14 Jun 2025, 11.16.38
    Author     : baphien
--%>

<%@ page import="tokoatk.Barang" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<%
    String id = request.getParameter("id");

    if (id != null && !id.isEmpty()) {
        Barang barang = new Barang();

        // Baca dulu untuk memastikan data ada sebelum hapus
        if (barang.baca(id)) {
            if (barang.hapus()) {
                // Jika berhasil, redirect ke daftar barang
                response.sendRedirect("baranglist.view.jsp");
            } else {
                out.println("<p style='color:red;'>Gagal menghapus barang.</p>");
            }
        } else {
            out.println("<p style='color:red;'>Barang tidak ditemukan.</p>");
        }
    } else {
        out.println("<p style='color:red;'>ID barang belum ditentukan.</p>");
    }
%>

