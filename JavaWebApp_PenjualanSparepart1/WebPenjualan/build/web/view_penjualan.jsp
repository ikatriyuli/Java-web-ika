<%--
    Document   : view_penjualan
    Created on : Oct 29, 2018, 9:31:48 PM
    Author     : ika
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.PenjualanModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Penjualan</title>
    </head>
    <body>
    <center><h1>Penjualan </h1></center>
    <center>
    
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

        .tabel2 {
            font-family: sans-serif;
            color: #444;
            border-collapse: collapse;
            width: 60%;
            border: 1px solid #f2f5f7;
            }
 
        .tabel2 tr th{
            background: #01DFD7;
            color: #fff;
            font-weight: normal;
        }

        .tabel2, th, td {
            padding: 8px 20px;
            text-align: center;
        }
 
        .tabel2 tr:hover {
            background-color: #f5f5f5;
        }
 
        .tabel2 tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .tambah{
            background-color: #81F7F3;
            color: #000000;
        }

    </style>
    
    <table class="tabel2" style=""margin:20px auto;" border="1">
        <tr>
            <th> Tanggal Faktur </th>
            <th> No Faktur</th>
            <th>Nama Konsumen</th>
            <th> Kode Barang </th>
            <th>Nama Barang</th>
            <th>Stok</th>
            <th> Jumlah </th>
            <th> Harga Satuan </th>
            <th> Harga Total </th>
            <th>Action</th>
        </tr>
        <%
            PenjualanModel ik = new PenjualanModel();
            List<PenjualanModel> data = new ArrayList<PenjualanModel>();
            String ket = request.getParameter("ket");
            if (ket == null) {
                data = ik.tampil();
            }
            for (int x = 0; x < data.size(); x++) {
        %>
        
        <tr>
            <td><%=data.get(x).getNo_faktur()%></td>
            <td><%=data.get(x).getTanggal_faktur()%></td>
            <td><%=data.get(x).getNama_ksm()%></td>
            <td><%=data.get(x).getKode_brg()%></td>
            <td><%=data.get(x).getNama_brg()%></td>
            <td><%=data.get(x).getStok()%></td>
            <td><%=data.get(x).getJumlah()%></td>
            <td><%=data.get(x).getHarga_satuan()%></td>
            <td><%=data.get(x).getHarga_total()%></td>
            
            <td>
                <a href="penjualanController?proses=hapus-penjualan&id=<%=data.get(x).getKode_brg()%>">Hapus</a>
            </td>
        </tr>
    </table>
     <%}%>
        <center>
            <button><a class="tambah" href="PenjualanController?proses=input-penjualan">Tambah</a></button>
        </center>
</center>
</body>
</html>