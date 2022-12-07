/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Parmanand.Saumya
 */
@WebServlet(name = "PackageServlet", urlPatterns = {"/PackageServlet"})
public class PackageServlet extends HttpServlet {

    public static final long serialVersionUID = 1L;
    public PackageDAO packdao;
    
    public PackageServlet(){
        this.packdao=new PackageDAO();
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        
        switch(action){
            case "/new":
                showNewForm(request, response);
                break;
            case "/insert":
                try{
                  insertPackage(request, response);  
                }catch (SQLException e) {
                   e.printStackTrace();
                  }
                break;
            case "/delete":
                try{
                  deletePackage(request, response);  
                }catch (SQLException e) {
                   e.printStackTrace();
                  }
                break;
            case "/edit":
                try{
                  showEditForm(request, response);
                }catch (SQLException e) {
                   e.printStackTrace();
                  }
                break;
            case "/update":
                try{
                  updatePackage(request, response);  
                }catch (SQLException e) {
                   e.printStackTrace();
                  }
                break;
            default:
                try{
                  listPackage(request, response);  
                }catch (SQLException e) {
                   e.printStackTrace();
                  }
                break;
        }
    }
    
    public void listPackage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException{
        List<Package> listPackage = packdao.selectAllPackages();
        request.setAttribute("listPackage", listPackage);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Package-list.jsp");
        dispatcher.forward(request, response);
    }
    
    public void updatePackage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException{
            int package_id = Integer.parseInt(request.getParameter("package_id"));
            String name= request.getParameter("name");
            int days_inc= Integer.parseInt(request.getParameter("days_inc"));
            float price= Float.parseFloat(request.getParameter("price"));
            String air_assistance=request.getParameter("air_assistance");
            String city_tour=request.getParameter("air_assistance");
            String welcome_drinks=request.getParameter("air_assistance");
            String daily_buffet=request.getParameter("air_assistance");
            String guide=request.getParameter("air_assistance");
            String special_for= request.getParameter("special_for");
            Package newPack = new Package(package_id, name, days_inc, price, air_assistance, city_tour, welcome_drinks, daily_buffet, guide, special_for);
            packdao.updatePackage(newPack);
            response.sendRedirect("list");
    }
    
    public void deletePackage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException{
        int id = Integer.parseInt(request.getParameter("package_id"));
        packdao.deletePackage(id);
            response.sendRedirect("list");
    }
    
    public void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException{
        int id = Integer.parseInt(request.getParameter("package_id"));
        Package existPackage = packdao.selectPackage(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Package-form.jsp");
        request.setAttribute("Package", existPackage);
        dispatcher.forward(request, response);
    }
    
    public void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        RequestDispatcher dispatcher = request.getRequestDispatcher("Package-form.jsp");
        dispatcher.forward(request, response);
    }
    
    public void insertPackage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException{
        
            int package_id = Integer.parseInt(request.getParameter("package_id"));
            String name= request.getParameter("name");
            int days_inc= Integer.parseInt(request.getParameter("days_inc"));
            float price=Float.parseFloat(request.getParameter("price"));
            String air_assistance=request.getParameter("air_assistance");
            String city_tour=request.getParameter("air_assistance");
            String welcome_drinks=request.getParameter("air_assistance");
            String daily_buffet=request.getParameter("air_assistance");
            String guide=request.getParameter("air_assistance");
            String special_for= request.getParameter("special_for");
            Package newPack = new Package(package_id, name, days_inc, price, air_assistance, city_tour, welcome_drinks, daily_buffet, guide, special_for);
            packdao.insertPackage(newPack);
            response.sendRedirect("list");
        
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
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
