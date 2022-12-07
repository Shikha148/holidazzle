
package ProjHoli;

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
 * @author Shivangi
 */
@WebServlet(name = "DestinationServlet", urlPatterns = {"/DestinationServlet"})
public class DestinationServlet extends HttpServlet {

    public static final long serialVersionUID = 1L;
    public AdminDAO admindao;
    
    public DestinationServlet(){
        this.admindao=new AdminDAO();
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
                  insertDestination(request, response);  
                }catch (SQLException e) {
                   e.printStackTrace();
                  }
                break;
            case "/delete":
                try{
                  deleteDestination(request, response);  
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
                  updateDestination(request, response);  
                }catch (SQLException e) {
                   e.printStackTrace();
                  }
                break;
            default:
                try{
                  listDestination(request, response);  
                }catch (SQLException e) {
                   e.printStackTrace();
                  }
                break;
        }
    }
    
    public void listDestination(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException{
        List<Destina> listDestination = admindao.selectAllDestination();
        request.setAttribute("listDestination", listDestination);
        RequestDispatcher dispatcher = request.getRequestDispatcher("destination-list.jsp");
        dispatcher.forward(request, response);
    }
    
    public void updateDestination(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException{
        int id = Integer.parseInt(request.getParameter("destination_id"));
        String name= request.getParameter("name");
            String state= request.getParameter("state");
            String city= request.getParameter("city");
            int pin = Integer.parseInt(request.getParameter("pincode"));
            String famous_for= request.getParameter("famous_for");
            Destina destination = new Destina(id, name, state, city, pin, famous_for);
        admindao.updateDestination(destination);
            response.sendRedirect("list");
    }
    
    public void deleteDestination(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException{
        int id = Integer.parseInt(request.getParameter("destination_id"));
        admindao.deleteDestination(id);
            response.sendRedirect("list");
    }
    
    public void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException{
        int id = Integer.parseInt(request.getParameter("destination_id"));
        Destina existdestina = admindao.selectDestination(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("destination-form.jsp");
        request.setAttribute("destination", existdestina);
        dispatcher.forward(request, response);
    }
    
    public void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        RequestDispatcher dispatcher = request.getRequestDispatcher("destination-form.jsp");
        dispatcher.forward(request, response);
    }
    
    public void insertDestination(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException{
        
            int id = Integer.parseInt(request.getParameter("destination_id"));
            String name= request.getParameter("name");
            String state= request.getParameter("state");
            String city= request.getParameter("city");
            int pin = Integer.parseInt(request.getParameter("pincode"));
            String famous_for= request.getParameter("famous_for");
            Destina newDestination = new Destina(id, name, state, city, pin, famous_for);
            admindao.insertDestination(newDestination);
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
