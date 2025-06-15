<%-- 
    Document   : api.barangupdate.jsp
    Created on : 14 Jun 2025, 10.54.13
    Author     : baphien
--%>

<%@ page import="tokoatk.Barang" %>
<%@ page contentType="text/plain;charset=UTF-8" %>

<%
    String id = request.getParameter("id");
    String nama = request.getParameter("nama");
    String hargaParam = request.getParameter("harga");

    if (id != null && nama != null && hargaParam != null) {
        try {
            int harga = Integer.parseInt(hargaParam);

            Barang barang = new Barang();
            if (barang.baca(id)) {
                barang.nama = nama;
                barang.harga = harga;

                if (barang.update()) {
                    out.print("ok");
                } else {
                    out.print("gagal update");
                }
            } else {
                out.print("barang tidak ditemukan");
            }
        } catch (NumberFormatException e) {
            out.print("harga tidak valid");
        }
    } else {
        out.print("parameter tidak lengkap");
    }
%>
