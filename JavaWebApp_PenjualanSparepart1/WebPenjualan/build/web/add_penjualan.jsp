<%-- 
    Document   : add_penjualan
    Created on : Oct 29, 2018, 9:23:13 PM
    Author     : ika
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.BarangModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Penjualan Sparepart</title>
    </head>
    <body>
        <style type="text/css">
            h3 {
                font-family: Arial;
                text-align: center;
                color: #0A2A29;
                font-style: bold;
            }

            h3 {
                position: relative;
                top: 20px;
                left: 30px;
                font-size: 30px;
            }

            input[type=text], select, textarea {
                width: 140%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 3px;
                margin-bottom: 2px;
                resize: vertical;
            }

            input[type=submit] {
                background-color: #4CAF50;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            input[type=submit]:hover {
                background-color: #45a049;
            }
            
        </style>
        
        <center><h3>Tambah Barang </h3></center>
        
        <div class="form">
        <form action="PenjualanController?data=penjualan&proses=input-penjualan" method="post">
        <table style="margin:20px auto;">
            <tr>
                <td>no faktur</td>
                <td><input type="text" name="no_faktur"></td>
            </tr>
            <tr>
                <td>Tgl Faktur</td>
                <td><input type="text" name="tanggal_faktur"></td>
            </tr>
            <tr>
                <td>Nama Konsumen</td>
                <td><input type="text" name="nama_ksm"></td>
            </tr>
            <tr>
                <td>Kode Barang</td>
                <td><input type="text" name="kode_brg"></td>
            </tr>
            <tr>
                <td>Nama Barang</td>
                <td><input type="text" name="nama_brg"></td>
            </tr>
            <tr>
                <td>Stok</td>
                <td><input type="text" name="stok"></td>
            </tr>
            <tr>
                <td>Jumlah</td>
                <td><input type="text" name="jumlah"></td>
            </tr>
            <tr>
                <td>Harga Satuan</td>
                <td><input type="text" name="harga_satuan"></td>
            </tr>
            <tr>
                <td>Harga Total</td>
                <td><input type="text" name="harga_total"></td>
            </tr>

            <tr>
                <td></td>
                <td><input type="submit" value="Simpan"></td>
            </tr>
        </table>
    </form> 

</body>
</html>
