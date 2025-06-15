/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tokoatk;

/**
 *
 * @author baphien
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

public class Sales {

    private String id;
    private LocalDateTime waktu;
    private String username;

    // GETTERS
    public String getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public LocalDateTime getWaktu() {
        return waktu;
    }

    // CREATE sales baru
    public boolean tambah(String username) {
        try (Connection conn = DbConnection.connect()) {
            LocalDateTime now = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyMMddHHmmssS");
            this.id = now.format(formatter);
            this.username = username;

            String sql = "INSERT INTO salesm (id, username) VALUES (?, ?)";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, this.id);
            st.setString(2, this.username);
            st.executeUpdate();
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    // READ sales berdasarkan id
    public boolean baca(String id) {
        try (Connection conn = DbConnection.connect()) {
            String sql = "SELECT * FROM salesm WHERE id=?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                this.id = rs.getString("id");
                this.username = rs.getString("username");
                return true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    // UPDATE username (optional)
    public boolean update() {
        try (Connection conn = DbConnection.connect()) {
            String sql = "UPDATE salesm SET username=? WHERE id=?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, this.username);
            st.setString(2, this.id);
            st.executeUpdate();
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    // DELETE sales dan detail dengan transaksi
    public boolean hapus() {
        Connection conn = null;
        try {
            conn = DbConnection.connect();
            conn.setAutoCommit(false); // mulai transaksi manual

            // 1. Hapus detail penjualan
            String sqlDetail = "DELETE FROM salesd WHERE salesId=?";
            PreparedStatement stDetail = conn.prepareStatement(sqlDetail);
            stDetail.setString(1, this.id);
            stDetail.executeUpdate();

            // 2. Hapus master penjualan
            String sqlMaster = "DELETE FROM salesm WHERE id=?";
            PreparedStatement stMaster = conn.prepareStatement(sqlMaster);
            stMaster.setString(1, this.id);
            stMaster.executeUpdate();

            conn.commit(); // simpan perubahan
            return true;
        } catch (Exception ex) {
            try {
                if (conn != null) conn.rollback(); // batalkan jika ada error
            } catch (Exception rollbackEx) {
                rollbackEx.printStackTrace();
            }
            ex.printStackTrace();
            return false;
        }
    }

    // Tambah detail penjualan
    public boolean addDetail(String barangId, Integer qty, Integer harga) {
        SalesDetail detail = new SalesDetail();
        detail.setSalesId(this.id);
        detail.setBarangId(barangId);
        detail.setQty(qty);
        detail.setHarga(harga);
        return detail.tambah();
    }

    // Ambil semua detail
    public ArrayList<SalesDetail> getDetail() {
        return SalesDetail.getListBySalesId(this.id);
    }

    // Ambil semua sales
    public static ArrayList<Sales> getList() {
        ArrayList<Sales> list = new ArrayList<>();
        try (Connection conn = DbConnection.connect()) {
            String sql = "SELECT * FROM salesm";
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Sales s = new Sales();
                s.id = rs.getString("id");
                s.username = rs.getString("username");
                list.add(s);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return list;
    }
}
