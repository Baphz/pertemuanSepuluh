<%-- 
    Document   : api.baranggantinama
    Created on : 14 Jun 2025, 00.31.09
    Author     : baphien
--%>

<%@ page import="tokoatk.Barang" %>
<%@ page contentType="text/plain;charset=UTF-8" %>

<%
    String id = request.getParameter("id");
    String namaBaru = request.getParameter("namabaru");

    if (id != null && namaBaru != null && !id.isEmpty() && !namaBaru.isEmpty()) {
        Barang barang = new Barang();
        if (barang.baca(id)) {
            barang.nama = namaBaru;
            if (barang.update()) {
                out.print("ok");
            } else {
                out.print("error: gagal update");
            }
        } else {
            out.print("error: barang tidak ditemukan");
        }
    } else {
        out.print("error: parameter tidak lengkap");
    }
%>

