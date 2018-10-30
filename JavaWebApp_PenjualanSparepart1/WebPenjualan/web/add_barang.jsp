<%-- 
    Document   : add_barang
    Created on : Oct 29, 2018, 9:06:33 PM
    Author     : ika
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.BarangModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE 
 <html>
 <head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <title>Penjualan Sparepart</title>   
 </head>
 <body>
    <style type="text/css">
        h1 {
            font-family: Arial;
            text-align: center;
            color: #0A2A29;
            font-style: bold;
        }

        h1 {
            position: relative;
            top: 20px;
            font-size: 40px;
        }

        input[type=text], select, textarea {
            width: 140%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 3px;
            margin-bottom: 6px;
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
        
        <center><h1>Tambah Barang </h1></center>
        
        <div class="form">
        <form action="BarangController?data=barang&proses=input-barang" method="post">
            <table style="margin:20px auto;">

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
                    <td>Harga Jual</td>
                    <td><input type="text" name="harga_jual"></td>
                </tr>
                <tr>
                    <td>Harga Beli</td>
                    <td><input type="text" name="harga_beli"></td>
                </tr>
                <tr>
                    <td>Satuan</td>
                    <td><input type="text" name="satuan"></td>
                </tr>
                <tr>
                    <td>Kategori</td>
                    <td><input type="text" name="kategori"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Tambah"></td>
                </tr>

            </table>
        </form>
        </div> 
    </body>
</html>
