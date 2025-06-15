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

public class Barang {

    public String id;
    public String nama;
    public String jenis;
    public int harga;

    // Getter
    public String getId() {
        return this.id;
    }

    public String getNama() {
        return this.nama;
    }

    public String getJenis() {
        return this.jenis;
    }

    public int getHarga() {
        return this.harga;
    }

    // Tambah data
    public boolean tambah() {
        try {
            Connection conn = DbConnection.connect();
            String sql = "INSERT INTO barang (id, nama, jenis, harga) VALUES (?, ?, ?, ?)";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            st.setString(2, nama);
            st.setString(3, jenis);
            st.setInt(4, harga);
            st.executeUpdate();
            conn.close();
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    // Baca data berdasarkan ID
    public boolean baca(String id) {
        try {
            Connection conn = DbConnection.connect();
            String sql = "SELECT * FROM barang WHERE id=?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                this.id = rs.getString("id");
                this.nama = rs.getString("nama");
                this.jenis = rs.getString("jenis");
                this.harga = rs.getInt("harga");
                conn.close();
                return true;
            } else {
                conn.close();
                return false;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    // Update data (termasuk ID)
    public boolean update(String oldId) {
        try {
            Connection conn = DbConnection.connect();
            String sql = "UPDATE barang SET id=?, nama=?, jenis=?, harga=? WHERE id=?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            st.setString(2, nama);
            st.setString(3, jenis);
            st.setInt(4, harga);
            st.setString(5, oldId);
            st.executeUpdate();
            conn.close();
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    // Overload update() jika tidak ubah ID
    public boolean update() {
        return update(this.id);
    }

    // Hapus data
    public boolean hapus() {
        try {
            Connection conn = DbConnection.connect();
            String sql = "DELETE FROM barang WHERE id=?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            st.executeUpdate();
            conn.close();
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    // Ambil semua data
    public static ArrayList<Barang> getList() {
        ArrayList<Barang> list = new ArrayList<>();
        try {
            Connection conn = DbConnection.connect();
            String sql = "SELECT * FROM barang";
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Barang b = new Barang();
                b.id = rs.getString("id");
                b.nama = rs.getString("nama");
                b.jenis = rs.getString("jenis");
                b.harga = rs.getInt("harga");
                list.add(b);
            }
            conn.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return list;
    }
}
