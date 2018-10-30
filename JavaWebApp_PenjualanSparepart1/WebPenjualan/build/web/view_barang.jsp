<%-- 
    Document   : view_barang
    Created on : Oct 29, 2018, 9:28:34 PM
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
        <title>Penjualan Spare Part</title>
    </head>
    <body>
    <center><h1>Penjualan SparePart</h1></center>

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

        .tabel {
            font-family: sans-serif;
            color: #444;
            border-collapse: collapse;
            width: 80%;
            border: 1px solid #f2f5f7;
            }
 
        .tabel tr th{
            background: #01DFD7;
            color: #fff;
            font-weight: normal;
        }

        .tabel, th, td {
            padding: 8px 20px;
            text-align: center;
        }
 
        .tabel tr:hover {
            background-color: #f5f5f5;
        }
 
        .tabel tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .tambah{
            background-color: #81F7F3;
            color: #000000;
        }

    </style>

    <table class="tabel" style="margin:20px auto;" border="1">

        <tr>
            <th>Kode Barang</th>
            <th>Nama Barang</th>
            <th>Stok</th>
            <th>Harga Jual</th>
            <th>Harga Beli</th>
            <th>Satuan</th>
            <th>Kategori</th>
            <th>Action</th>
        </tr>
        <%
            BarangModel ik = new BarangModel();
            List<BarangModel> data = new ArrayList<BarangModel>();
            String ket = request.getParameter("ket");
            if (ket == null) {
                data = ik.tampil();
            }
            for (int x = 0; x < data.size(); x++) {
        %>
        <tr>
            <td><%=data.get(x).getKode_brg()%></td>
            <td><%=data.get(x).getNama_brg()%></td>
            <td><%=data.get(x).getStok()%></td>
            <td><%=data.get(x).getHarga_jual()%></td>
            <td><%=data.get(x).getHarga_beli()%></td>
            <td><%=data.get(x).getSatuan()%></td>
            <td><%=data.get(x).getKategori()%></td>
            <td>
                <a href="BarangController?proses=edit-barang&id=<%=data.get(x).getKode_brg()%>">Edit</a>

                <a href="BarangController?proses=hapus-barang&id=<%=data.get(x).getKode_brg()%>">Hapus</a>
            </td>
        </tr>
        <%}%>

    </table>
        <center>
            <button><a class="tambah" href="BarangController?proses=input-barang">Tambah Barang</a></button>
        </center>
</body>
</html>