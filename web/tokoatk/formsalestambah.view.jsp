<%-- 
    Document   : formsalestambah.view.jsp
    Created on : 13 Jun 2025, 23.59.16
    Author     : baphien
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="tokoatk.Barang" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Detail Penjualan</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
<div class="container">
    <header>
        <h1><i class="fas fa-cart-plus"></i> Detail Penjualan</h1>
    </header>

    <main>
        <!-- Info Transaksi -->
        <div class="sales-info-card">
            <div class="sales-info-row">
                <span class="label"><i class="fas fa-receipt"></i> Kode Transaksi:</span>
                <span class="value">${sales.getId()}</span>
            </div>
            <div class="sales-info-row">
                <span class="label"><i class="fas fa-user"></i> Nama Sales:</span>
                <span class="value">${sales.getUsername()}</span>
            </div>
        </div>

        <!-- Tabel Detail Item -->
        <table id="tabelDetail" class="data-table">
            <thead>
                <tr>
                    <th>Nama Barang</th>
                    <th>Qty</th>
                    <th>Harga</th>
                    <th>Total</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="row" items="${sales.getDetail()}">
                    <tr>
                        <td>${row.getBarangNama()}</td>
                        <td class="qty">${row.getQty()}</td>
                        <td class="harga">Rp <fmt:formatNumber value="${row.getHarga()}" type="number" pattern="#,##0" /></td>
                        <td class="subtotal">Rp <fmt:formatNumber value="${row.getTotal()}" type="number" pattern="#,##0" /></td>
                        <td>
                            <form action="salesdetailhapus.jsp" method="post" style="display:inline;">
                                <input type="hidden" name="id" value="${row.getId()}">
                                <input type="hidden" name="salesId" value="${sales.getId()}">
                                <button type="submit" class="btn btn-red" title="Hapus" onclick="return confirm('Yakin ingin menghapus item ini?')">
                                    <i class="fa fa-trash"></i>
                                </button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!-- Grand Total -->
        <div id="totalInfo" class="alert hide" style="margin-bottom: 1rem;"></div>

        <!-- Form Tambah Item -->
        <h3><i class="fas fa-plus-circle"></i> Tambah Item</h3>
        <form action="salesdetailtambah.jsp" method="post" class="form-layout" onsubmit="return siapkanHargaSubmit();">
            <input type="hidden" name="salesId" value="${sales.getId()}">

            <div class="form-group">
                <label for="barangId">Barang:</label>
                <select name="barangId" id="barangId" required>
                    <%
                        ArrayList<Barang> list = Barang.getList();
                        for (Barang b : list) {
                            out.println("<option value=\"" + b.getId() + "\" data-harga=\"" + b.getHarga() + "\">" + b.getNama() + "</option>");
                        }
                    %>
                </select>
            </div>

            <div class="form-group">
                <label for="qty">Qty:</label>
                <input name="qty" type="number" id="qty" min="1" required>
            </div>

            <div class="form-group">
                <label for="harga">Harga (Rp):</label>
                <input id="hargaDisplay" readonly placeholder="cth: 10.000">
                <input type="hidden" name="harga" id="harga">
            </div>

            <div class="form-group">
                <label for="total">Total (Rp):</label>
                <input id="totalDisplay" readonly placeholder="otomatis">
                <input type="hidden" name="total" id="total">
            </div>

            <div class="btn-group">
                <button type="submit" class="btn btn-green"><i class="fas fa-plus"></i> Tambah</button>
                <button type="button" onclick="hitungGrandTotal()" class="btn btn-blue"><i class="fas fa-calculator"></i> Get Total</button>
            </div>
        </form>

        <!-- Kembali -->
        <div class="btn-group" style="margin-top: 2rem;">
            <a href="saleslist.jsp" class="btn btn-red"><i class="fas fa-arrow-left"></i> Kembali ke Daftar Sales</a>
        </div>
    </main>

    <footer>
        <p><i class="fas fa-store"></i> © 2025 Toko ATK</p>
    </footer>
</div>

<!-- Script -->
<script>
    function formatRupiah(angka) {
        if (isNaN(angka)) return '';
        return parseInt(angka).toLocaleString('id-ID');
    }

    $('#barangId').change(function () {
        const harga = $(this).find(':selected').data('harga');
        $('#harga').val(harga);
        $('#hargaDisplay').val(formatRupiah(harga));
        $('#qty').val('');
        $('#total').val('');
        $('#totalDisplay').val('');
    });

    $('#qty').on('input', function () {
        const qty = parseInt($('#qty').val());
        const harga = parseInt($('#harga').val());
        const total = (!isNaN(qty) && !isNaN(harga)) ? qty * harga : 0;
        $('#total').val(total);
        $('#totalDisplay').val(formatRupiah(total));
    });

    function hitungGrandTotal() {
        let total = 0;
        $('#tabelDetail tbody tr').each(function () {
            const text = $(this).find('.subtotal').text().replace(/[^0-9]/g, '');
            const subtotal = parseInt(text);
            if (!isNaN(subtotal)) total += subtotal;
        });
        $('#totalInfo').removeClass('hide').text("Total: Rp " + formatRupiah(total)).show();
    }

    function siapkanHargaSubmit() {
        if (!$('#harga').val() || !$('#total').val()) {
            alert("Pastikan semua field terisi dengan benar.");
            return false;
        }
        return true;
    }

    $(document).ready(function () {
        $('#barangId').trigger('change');
    });
</script>
</body>
</html>
