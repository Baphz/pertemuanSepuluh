<%-- 
    Document   : api.barangstat
    Created on : 14 Jun 2025, 00.31.30
    Author     : baphien
--%>

<%@ page import="java.util.ArrayList" %>
<%@ page import="tokoatk.Barang" %>
<%@ page contentType="application/json;charset=UTF-8" %>

<%
    ArrayList<Barang> list = Barang.getList();
    
    int banyak = list.size();
    int total = 0;
    double rata2 = 0.0;

    for (Barang barang : list) {
        total += barang.harga;
    }

    if (banyak > 0) {
        rata2 = (double) total / banyak;
    }

    // Format output JSON
    out.print("{");
    out.print("\"banyak\": " + banyak + ", ");
    out.print("\"rata2\": " + String.format("%.2f", rata2));
    out.print("}");
%>
