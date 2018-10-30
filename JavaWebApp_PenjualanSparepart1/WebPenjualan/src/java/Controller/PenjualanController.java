/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.BarangModel;
import Model.PenjualanModel;

/**
 *
 * @author ika
 */
@WebServlet(name = "PenjualanController", urlPatterns = {"/PenjualanController"})
public class PenjualanController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String proses = request.getParameter("proses");
        String action = request.getParameter("action");
        if (proses.equals("menupenjualan")) {
            response.sendRedirect("view_penjualan.jsp");
        } else if (proses.equals("input-penjualan")) {
            response.sendRedirect("add_penjualan.jsp");
            return;
        } else if (proses.equals("hapus-penjualan")) {
           PenjualanModel ik = new PenjualanModel();
            ik.setKode_brg(request.getParameter("ik"));
            ik.hapus();
             response.sendRedirect("view_penjualan.jsp");
        }else {
            response.sendRedirect("view_penjualan.jsp");
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
        String data = request.getParameter("data");
        String proses = request.getParameter("proses");
        if (data != null) {
            if (data.equals("penjualan")) {
                PenjualanModel ik = new PenjualanModel();

                ik.setTanggal_faktur(request.getParameter("tanggal_faktur"));
                ik.setNo_faktur(request.getParameter("no_faktur"));
                ik.setNama_ksm(request.getParameter("nama_ksm"));
                ik.setKode_brg(request.getParameter("kode_brg"));
                ik.setNama_brg(request.getParameter("nama_brg"));
                ik.setStok(request.getParameter("stok"));
                ik.setJumlah(request.getParameter("jumlah"));
                ik.setHarga_satuan(request.getParameter("harga_satuan"));
                ik.setHarga_total(request.getParameter("harga_total"));
                if (proses.equals("menupenjualan")) {
                    response.sendRedirect("view_penjualan.jsp");
                } else if (proses.equals("input-penjualan")) {
                    ik.simpan();
                } else if (proses.equals("hapus-penjualan")) {
                    ik.hapus();
                }
                    response.sendRedirect("view_penjualan.jsp");
                }
            }
        }
    }
