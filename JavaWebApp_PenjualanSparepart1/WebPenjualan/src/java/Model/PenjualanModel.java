/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Koneksi.koneksi;
/**
 *
 * @author ika
 */
public class PenjualanModel {
    String tanggal_faktur, no_faktur, nama_ksm, kode_brg, nama_brg, stok, jumlah, harga_satuan, harga_total;
    koneksi db = null;
    
    public PenjualanModel() {
        db = new koneksi();
    }
    
    public String getTanggal_faktur() {
        return tanggal_faktur;
    }

    public void setTanggal_faktur(String tanggal_faktur) {
        this.tanggal_faktur = tanggal_faktur;
    }

    public String getNo_faktur() {
        return no_faktur;
    }

    public void setNo_faktur(String no_faktur) {
        this.no_faktur = no_faktur;
    }

    public String getNama_ksm() {
        return nama_ksm;
    }

    public void setNama_ksm(String nama_ksm) {
        this.nama_ksm = nama_ksm;
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

    public String getJumlah() {
        return jumlah;
    }

    public void setJumlah(String jumlah) {
        this.jumlah = jumlah;
    }

    public String getHarga_satuan() {
        return harga_satuan;
    }

    public void setHarga_satuan(String harga_satuan) {
        this.harga_satuan = harga_satuan;
    }

    public String getHarga_total() {
        return harga_total;
    }

    public void setHarga_total(String harga_total) {
        this.harga_total = harga_total;
    }

    public koneksi getDb() {
        return db;
    }

    public void setDb(koneksi db) {
        this.db = db;
    }
    
    public List tampil() {
        List<PenjualanModel> data = new ArrayList<PenjualanModel>();
        ResultSet rs = null;

        try {
            String sql = "select * from penjualan";
            rs = db.ambilData(sql);
            while (rs.next()) {
                PenjualanModel ik = new PenjualanModel();
                ik.setTanggal_faktur(rs.getString("tanggal_faktur"));
                ik.setNo_faktur(rs.getString("no_faktur"));
                ik.setNama_ksm(rs.getString("nama_ksm"));
                ik.setKode_brg(rs.getString("kode_brg"));
                ik.setNama_brg(rs.getString("nama_brg"));
                ik.setStok(rs.getString("stok"));
                ik.setJumlah(rs.getString("jumlah"));
                ik.setHarga_satuan(rs.getString("harga_satuan"));
                ik.setHarga_total(rs.getString("harga_total"));
                data.add(ik);
            }
            
            db.diskonek(rs);
        } catch (Exception ex) {
            System.out.println("Terjadi Kesalahan Saat menampilkan data User" + ex);
        }
        return data;
    }

    public void simpan() {
        try {
            String sql = "INSERT INTO penjualan values('" + no_faktur + "', '" + tanggal_faktur + "', '" + nama_ksm + "','" + kode_brg + "', '" + nama_brg + "', '" + stok + "','" + jumlah + "','" + harga_satuan + "', '" + harga_total + "')";
            db.simpanData(sql);
        } catch (Exception e) {
            System.out.println("ERRORNYA DISINI : "+e);

        }
    }

    public void hapus() {
        String sql = "DELETE FROM penjualan WHERE kode_brg='" + kode_brg + "'";
        db.simpanData(sql);
        System.out.println("");
    }
    
     public List cariKDBRG() {
        List<PenjualanModel> data = new ArrayList<PenjualanModel>();
        ResultSet rs = null;

        try {
            String sql = "SELECT * FROM master_barang WHERE kode_brg='"+kode_brg+ "'";
            rs = db.ambilData(sql);
            while (rs.next()) {
                PenjualanModel k = new PenjualanModel();
                k.setNo_faktur(rs.getString("no_faktur"));
                k.setTanggal_faktur(rs.getString("tanggal_faktur"));
                k.setNama_ksm(rs.getString("nama_ksm"));
                k.setKode_brg(rs.getString("kode_brg"));
                k.setNama_brg(rs.getString("nama_brg"));
                k.setStok(rs.getString("stok"));
                k.setJumlah(rs.getString("jumlah"));
                k.setHarga_satuan(rs.getString("harga_satuan"));
                k.setHarga_total(rs.getString ("harga_total"));
                data.add(k);

            }
            db.diskonek(rs);
        } catch (Exception ex) {
            System.out.println("Terjadi Kesalah Saat menampilkan Cari Kode Barang" + ex);
        }
        return data;
    } 
 }
