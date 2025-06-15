<%-- 
    Document   : formbarangtambah.view.jsp
    Created on : 13 Jun 2025, 23.56.01
    Author     : baphien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Tambah Barang</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <div class="container">
        <header>
            <h1><i class="fas fa-box-open"></i> Form Tambah Barang</h1>
        </header>

        <main>
            <form action="barangtambah.jsp" method="post" class="form-layout">
                <div class="form-group">
                    <label for="id"><i class="fas fa-barcode"></i> ID Barang:</label>
                    <input type="text" name="id" id="id" required>
                </div>

                <div class="form-group">
                    <label for="nama"><i class="fas fa-box"></i> Nama Barang:</label>
                    <input type="text" name="nama" id="nama" required>
                </div>

                <div class="form-group">
                    <label for="jenis"><i class="fas fa-tags"></i> Jenis:</label>
                    <input type="text" name="jenis" id="jenis" required>
                </div>

                <div class="form-group">
                    <label for="harga"><i class="fas fa-money-bill-wave"></i> Harga (Rp):</label>
                    <input type="number" name="harga" id="harga" required min="0" placeholder="contoh: 10000">
                </div>

                <div class="btn-group" style="margin-top: 1.5rem;">
                    <button type="submit" class="btn btn-green"><i class="fas fa-check"></i> Tambah</button>
                    <a href="baranglist.jsp" class="btn btn-red"><i class="fas fa-times"></i> Batal</a>
                </div>
            </form>
        </main>

        <footer>
            <p><i class="fas fa-store"></i> © 2025 Toko ATK</p>
        </footer>
    </div>
</body>
</html>
