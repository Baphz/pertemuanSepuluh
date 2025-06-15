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
import java.util.ArrayList;

public class SalesDetail {

    private Integer id;
    private String salesId;
    private String barangId;
    private Integer qty;
    private Integer harga;

    // GETTERS
    public Integer getId() {
        return id;
    }

    public String getSalesId() {
        return salesId;
    }

    public String getBarangId() {
        return barangId;
    }

    public String getBarangNama() {
        Barang barang = new Barang();
        if (barang.baca(barangId)) {
            return barang.getNama();
        }
        return "[Barang Tidak Ditemukan]";
    }

    public Integer getQty() {
        return qty;
    }

    public Integer getHarga() {
        return harga;
    }

    public Integer getTotal() {
        return (harga != null && qty != null) ? harga * qty : 0;
    }

    // SETTERS
    public void setSalesId(String salesId) {
        this.salesId = salesId;
    }

    public void setBarangId(String barangId) {
        this.barangId = barangId;
    }

    public void setQty(Integer qty) {
        this.qty = qty;
    }

    public void setHarga(Integer harga) {
        this.harga = harga;
    }

    // CREATE
    public boolean tambah() {
        try (Connection conn = DbConnection.connect()) {
            String sql = "INSERT INTO salesd (salesId, barangId, qty, harga) VALUES (?, ?, ?, ?)";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, salesId);
            st.setString(2, barangId);
            st.setInt(3, qty);
            st.setInt(4, harga);
            st.executeUpdate();
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    // READ
    public boolean baca(int id) {
        try (Connection conn = DbConnection.connect()) {
            String sql = "SELECT * FROM salesd WHERE id=?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                this.id = rs.getInt("id");
                this.salesId = rs.getString("salesId");
                this.barangId = rs.getString("barangId");
                this.qty = rs.getInt("qty");
                this.harga = rs.getInt("harga");
                return true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    // UPDATE
    public boolean update() {
        try (Connection conn = DbConnection.connect()) {
            String sql = "UPDATE salesd SET barangId=?, qty=?, harga=? WHERE id=?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, barangId);
            st.setInt(2, qty);
            st.setInt(3, harga);
            st.setInt(4, id);
            st.executeUpdate();
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    // DELETE
    public boolean hapus() {
        try (Connection conn = DbConnection.connect()) {
            String sql = "DELETE FROM salesd WHERE id=?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    // LIST BY SALES ID (tanpa panggil baca satu per satu)
    public static ArrayList<SalesDetail> getListBySalesId(String salesId) {
        ArrayList<SalesDetail> list = new ArrayList<>();
        try (Connection conn = DbConnection.connect()) {
            String sql = "SELECT * FROM salesd WHERE salesId=?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, salesId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                SalesDetail d = new SalesDetail();
                d.id = rs.getInt("id");
                d.salesId = rs.getString("salesId");
                d.barangId = rs.getString("barangId");
                d.qty = rs.getInt("qty");
                d.harga = rs.getInt("harga");
                list.add(d);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return list;
    }
}
