/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.ResultSet;
import Koneksi.koneksi;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author ika
 */
public class BarangModel {
    
    String kode_brg, nama_brg, stok, harga_jual, harga_beli, satuan, kategori;
    koneksi db = null;
    
    public BarangModel() {
        db = new koneksi();
    }

    public String getKode_brg() {
        return kode_brg;
    }

    public void setKode_brg(String kode_brg) {
        this.kode_brg = kode_brg;
    }

    public String getNama_brg() {
        return nama_brg;
    }

    public void setNama_brg(String nama_brg) {
        this.nama_brg = nama_brg;
    }

    public String getStok() {
        return stok;
    }

    public void setStok(String stok) {
        this.stok = stok;
    }

    public String getHarga_jual() {
        return harga_jual;
    }

    public void setHarga_jual(String harga_jual) {
        this.harga_jual = harga_jual;
    }

    public String getHarga_beli() {
        return harga_beli;
    }

    public void setHarga_beli(String harga_beli) {
        this.harga_beli = harga_beli;
    }

    public String getSatuan() {
        return satuan;
    }

    public void setSatuan(String satuan) {
        this.satuan = satuan;
    }

    public String getKategori() {
        return kategori;
    }

    public void setKategori(String kategori) {
        this.kategori = kategori;
    }
    
    public koneksi getDb() {
        return db;
    }

    public void setDb(koneksi db) {
        this.db = db;
    }

    public List tampil() {
        List<BarangModel> data = new ArrayList<BarangModel>();
        ResultSet rs = null;

        try {
            String sql = "select * from master_barang order by nama_brg asc";
            rs = db.ambilData(sql);
            while (rs.next()) {
                BarangModel ik = new BarangModel();
                ik.setKode_brg(rs.getString("kode_brg"));
                ik.setNama_brg(rs.getString("nama_brg"));
                ik.setStok(rs.getString("stok")); 
                ik.setHarga_jual(rs.getString("harga_jual"));
                ik.setHarga_beli(rs.getString("harga_beli"));
                ik.setSatuan(rs.getString("satuan"));
                ik.setKategori(rs.getString("kategori"));
                data.add(ik);
            }
            db.diskonek(rs);
        } catch (Exception ex) {
            System.out.println("Terjadi Kesalahan Saat menampilkan data User" + ex);
        }
        return data;
    }

    public void simpan() {
        String sql = "INSERT INTO master_barang values('" + kode_brg + "', '" + nama_brg + "', '" + stok + "', '" + harga_jual + "','" + harga_beli + "','" + satuan + "','" + kategori + "')";
        db.simpanData(sql);
    }

    public void update() {
        String sql = "UPDATE master_barang SET nama_brg='"+nama_brg+"',stok='"+stok+"',harga_jual='"+harga_jual + "',harga_beli='"+harga_beli+"',satuan='"+satuan+"',kategori='"+kategori+"' WHERE kode_brg='"+kode_brg+"'";
        db.simpanData(sql);
    }
     public void hapus(){
        String sql="DELETE FROM master_barang WHERE kode_brg='"+kode_brg+"'";
        db.simpanData(sql);
        System.out.println("");
    }

    public List cariKDBRG() {
        List<BarangModel> data = new ArrayList<BarangModel>();
        ResultSet rs = null;

        try {
            String sql = "SELECT * FROM master_barang WHERE kode_brg='"+kode_brg+ "'";
            rs = db.ambilData(sql);
            while (rs.next()) {
                BarangModel m = new BarangModel();
                m.setKode_brg(rs.getString("kode_brg"));
                m.setNama_brg(rs.getString("nama_brg"));
                m.setStok(rs.getString("stok"));
                m.setHarga_jual(rs.getString("harga_jual"));
                m.setHarga_beli(rs.getString("harga_beli"));
                m.setSatuan(rs.getString("satuan"));
                m.setKategori(rs.getString("kategori"));
                data.add(m);

            }
            db.diskonek(rs);
        } catch (Exception ex) {
            System.out.println("Terjadi Kesalah Saat menampilkan Cari Kode Barang" + ex);
        }
        return data;

    }    
}