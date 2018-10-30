<%-- 
    Document   : edit_barang
    Created on : Oct 29, 2018, 9:24:28 PM
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
        <title>Edit Barang</title>
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
        
        <center><h1>Edit Barang</h1></center>
        <div class="form">
        <form action="barangController?data=barang&proses=edit-barang" method="post">
        <table style="margin:20px auto;">
            <%  String id = request.getParameter("id");
                BarangModel ik = new BarangModel();
                ik.setKode_brg(id);
                List<BarangModel> data = new ArrayList<BarangModel>();
                data = ik.cariKDBRG();
                if (data.size() > 0) {
            %>
            
            <tr>
                <td>Kode Barang</td>
                <td><input type="text" name="kode_brg" value="<%=data.get(0).getKode_brg()%>"></td>
            </tr>
            <tr>
                <td>Nama Barang</td>
                <td><input type="text" name="nama_brg" value="<%=data.get(0).getNama_brg()%>"></td>
                <td><input type="hidden" name="id" value="<%=data.get(0).getKode_brg()%>"></td>
            </tr>
            <tr>
                <td>Stok</td>
                <td><input type="text" name="stok" value="<%=data.get(0).getStok()%>"></td>
                <td><input type="hidden" name="id" value="<%=data.get(0).getKode_brg()%>"></td>
            </tr>
            <tr>
                <td>Harga Jual</td>
                <td><input type="text" name="harga_jual" value="<%=data.get(0).getHarga_jual()%>"></td>
                <td><input type="hidden" name="id" value="<%=data.get(0).getKode_brg()%>"></td>
            </tr>
            <tr>
                <td>Harga Beli</td>
                <td><input type="text" name="harga_beli" value="<%=data.get(0).getHarga_beli()%>"></td>
                <td><input type="hidden" name="id" value="<%=data.get(0).getKode_brg()%>"></td>
            </tr>
            <tr>
                <td>Satuan</td>
                <td><input type="text" name="satuan" value="<%=data.get(0).getSatuan()%>"></td>
                <td><input type="hidden" name="id" value="<%=data.get(0).getKode_brg()%>"></td>
            </tr>
            <tr>
                <td>Kategori</td>
                <td><input type="text" name="kategori" value="<%=data.get(0).getKategori()%>"></td>
                <td><input type="hidden" name="id" value="<%=data.get(0).getKode_brg()%>"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Edit"></td>
            </tr>
            <%}%>
        </table>
    </form> 

</body>
</html>
