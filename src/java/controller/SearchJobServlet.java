/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.JobDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Job;

/**
 *
 * @author lpdie
 */
public class SearchJobServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String indexPage = request.getParameter("index");
        try {
            if (indexPage == null || indexPage.isEmpty() || "-1".equals(indexPage)) {
                indexPage = "1";
            }
            response.setContentType("text/html;charset=UTF-8");
            int index = Integer.parseInt(indexPage);
            JobDAO dao = new JobDAO();
            int count = dao.getTotalJobs();
            int endPage = count / 4;
            if (count % 4 != 0) {
                endPage++;
            }
            String name = request.getParameter("name");
            String companyId_raw = request.getParameter("companyId");
            String salaryF_raw = request.getParameter("salaryF");
            String salaryT_raw = request.getParameter("salaryT");
            String[] locations = request.getParameterValues("locations");
            String[] yearExp = request.getParameterValues("yearsExp");
            List<Job> listjp = dao.pagingJobs(index);
            List<Job> data = dao.search(name, companyId_raw, salaryF_raw, salaryT_raw, locations, yearExp, index);
            request.setAttribute("data", data);
            request.setAttribute("test", true);
            request.setAttribute("tag", index);
            request.setAttribute("listjp", listjp);
            request.setAttribute("endPage", endPage);
            request.setAttribute("locations", locations);

            request.getRequestDispatcher("jobs.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
