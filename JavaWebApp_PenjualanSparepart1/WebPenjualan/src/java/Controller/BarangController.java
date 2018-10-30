/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

/**
 *
 * @author ika
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.BarangModel;

@WebServlet(name = "BarangController", urlPatterns = {"/BarangController"})
public class BarangController extends HttpServlet{
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);

        String proses = request.getParameter("proses");
        String action = request.getParameter("action");
        if (proses.equals("menuutama")) {
            response.sendRedirect("view_barang.jsp");
        } else if (proses.equals("input-barang")) {
            response.sendRedirect("add_barang.jsp");
            return;
        } else if (proses.equals("edit-barang")) {
            response.sendRedirect("edit_barang.jsp?id=" + request.getParameter("id"));
            return;
        } else if (proses.equals("hapus-barang")) {
            BarangModel ik = new BarangModel();
            ik.setKode_brg(request.getParameter("id"));
            ik.hapus();
//            response.sendRedirect("index.jsp");
            response.sendRedirect("view_barang.jsp");
        }else if (proses.equals("data_penjualan")) {
            response.sendRedirect("view_barang.jsp");
            return;
        }
    }
    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);

        String data = request.getParameter("data");
        String proses = request.getParameter("proses");

        if (data != null) {
            if (data.equals("barang")) {
                BarangModel ik = new BarangModel();
                ik.setKode_brg(request.getParameter("kode_brg"));
                ik.setNama_brg(request.getParameter("nama_brg"));
                ik.setStok(request.getParameter("stok"));
                ik.setHarga_jual(request.getParameter("harga_jual"));
                ik.setHarga_beli(request.getParameter("harga_beli"));
                ik.setSatuan(request.getParameter("satuan"));
                ik.setKategori(request.getParameter("kategori"));
                if (proses.equals("menuutama")) {
                    response.sendRedirect("view_barang.jsp");
                } else if (proses.equals("input-barang")) {
                    ik.simpan();
                } else if (proses.equals("edit-barang")) {
                    ik.update();
                } else if (proses.equals("hapus-barang")) {
                    ik.hapus();
                }
//                response.sendRedirect("index.jsp");
                response.sendRedirect("view_barang.jsp");
            }
        }
    }
}
    
    
    

