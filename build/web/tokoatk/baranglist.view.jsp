<%-- 
    Document   : baranglist.view
    Created on : 13 Jun 2025, 23.55.13
    Author     : baphien
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Daftar Barang</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="icon" type="image/png" href="../assets/favicon.png">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<div class="container">
    <header>
        <h1><i class="fas fa-boxes"></i> Daftar Barang</h1>
    </header>
    <main>
        <div class="table-header">
            <a href="formbarangtambah.jsp">
                <button class="btn btn-green"><i class="fas fa-plus"></i> Tambah Barang</button>
            </a>
        </div>

        <table class="data-table">
            <thead>
                <tr>
                    <th><i class="fas fa-barcode"></i> ID</th>
                    <th><i class="fas fa-tag"></i> Nama</th>
                    <th><i class="fas fa-money-bill-wave"></i> Harga</th>
                    <th><i class="fas fa-tools"></i> Aksi</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="barang" items="${list}">
                    <tr>
                        <td>${barang.id}</td>
                        <td><span id="nama${barang.id}">${barang.nama}</span></td>
                        <td><span id="harga${barang.id}">Rp <fmt:formatNumber value="${barang.harga}" type="number" pattern="#,##0" /></span></td>
                        <td>
                            <div class="action-buttons">
                                <button class="btn btn-blue" onclick="gantiNama('${barang.id}')" title="Ubah Nama">
                                    <i class="fas fa-pen"></i>
                                </button>
                                <button class="btn btn-green" onclick="gantiHarga('${barang.id}')" title="Ubah Harga">
                                    <i class="fas fa-dollar-sign"></i>
                                </button>
                                <a href="baranghapus.jsp?id=${barang.id}" onclick="return confirm('Yakin ingin menghapus barang ini?');" title="Hapus Barang">
                                    <button class="btn btn-red">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </a>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <div class="btn-group">
            <a href="home.view.jsp">
                <button class="btn btn-blue"><i class="fas fa-arrow-left"></i> Kembali ke Home</button>
            </a>
        </div>
    </main>
    <footer>
        <p><i class="fas fa-store"></i> © 2025 Toko ATK</p>
    </footer>
</div>

<script>
    function gantiNama(id) {
        const namaBaru = prompt("Masukkan nama baru:");
        if (!namaBaru) return;

        $.post("api.baranggantinama.jsp", {
            id: id,
            namabaru: namaBaru
        }, function (response) {
            if (response.trim() === "ok") {
                $("#nama" + id).text(namaBaru);
                tampilkanAlert("Nama berhasil diganti");
            } else {
                alert("Gagal mengganti nama");
            }
        });
    }

    function gantiHarga(id) {
        const hargaBaru = prompt("Masukkan harga baru:");
        if (!hargaBaru || isNaN(hargaBaru) || parseInt(hargaBaru) <= 0) {
            alert("Harga tidak valid");
            return;
        }

        $.post("api.barangupdate.jsp", {
            id: id,
            nama: $("#nama" + id).text(),
            harga: hargaBaru
        }, function (response) {
            if (response.trim() === "ok") {
                $("#harga" + id).text("Rp " + parseInt(hargaBaru).toLocaleString("id-ID"));
                tampilkanAlert("Harga berhasil diganti");
            } else {
                alert("Gagal mengganti harga");
            }
        });
    }

    function tampilkanAlert(pesan) {
        $("<div class='alert'><i class='fas fa-info-circle'></i> " + pesan + "</div>")
            .prependTo("main")
            .delay(3000).fadeOut(500, function () {
                $(this).remove();
            });
    }
</script>
</body>
</html>
