package ProjHoli;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Shivangi
 */
public class AdminDAO {
    public String jdbcURL="jdbc:mysql://localhost:3306/jsp_project";
    public String jdbcUsername="root";
    public String jdbcPassword="root";
    
    public  String INSERT_destination_SQL = "INSERT INTO destination"+" (destination_id, name, state, city, pincode, famous_for) VALUES "
                    + " (?, ?, ?, ?, ?, ?)";
    public String SELECT_DESTINATION_BY_ID ="select destination_id, name, state, city, pincode, famous_for "
                           + "from destination where destination_id=?";
    public  String SELECT_ALL_DESTINATION ="select * from destination";
    public String DELETE_DESTINATION_SQL ="delete from destination where destination_id=?";
    public String UPDATE_DESTINATION_SQL ="update destination set destination_id=?, name=?, state=?, city=?,"
                          + " pincode=?, famous_for=? where destination_id=?";
    
    public Connection getConnection(){
        Connection connection = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","root");
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return connection;
    }
    
    public void insertDestination(Destina destination)throws SQLException{
        try(Connection connection = getConnection();
                PreparedStatement ps=connection.prepareStatement(INSERT_destination_SQL)){
            ps.setInt(1, destination.getId());
            ps.setString(2, destination.getName());
            ps.setString(3, destination.getState());
            ps.setString(4, destination.getCity());
            ps.setInt(5, destination.getPincode());
            ps.setString(6, destination.getFamous());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public boolean updateDestination(Destina destination)throws SQLException{
        boolean rowUpdated;
        try(Connection connection = getConnection();
                PreparedStatement ps=connection.prepareStatement(UPDATE_DESTINATION_SQL);){
            ps.setInt(1, destination.getId());
            ps.setString(2, destination.getName());
            ps.setString(3, destination.getState());
            ps.setString(4, destination.getCity());
            ps.setInt(5, destination.getPincode());
            ps.setString(6, destination.getFamous());
            rowUpdated = ps.executeUpdate()>0;
        }
        return rowUpdated;
    }
    
    public Destina selectDestination(int destination_id){
        Destina destination=null;
        try(Connection connection = getConnection();
                PreparedStatement ps=connection.prepareStatement(SELECT_DESTINATION_BY_ID);){
            ps.setInt(1, destination_id);
            System.out.println(ps);
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("destination_id");
                String name = rs.getString("name");
                String state = rs.getString("state");
                String city = rs.getString("city");
                int pincode = rs.getInt("pincode");
                String famous_for = rs.getString("famous_for");
                destination = new Destina(destination_id, name, state, city, pincode, famous_for);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return destination;
    }
    
    public List<Destina> selectAllDestination(){
        List<Destina> destination = new ArrayList<>();
        try(Connection connection = getConnection();
                PreparedStatement ps=connection.prepareStatement(SELECT_ALL_DESTINATION);){
            System.out.println(ps);
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("destination_id");
                String name = rs.getString("name");
                String state = rs.getString("state");
                String city = rs.getString("city");
                int pincode = rs.getInt("pincode");
                String famous_for = rs.getString("famous_for");
                destination.add(new Destina(id, name, state, city, pincode, famous_for));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return destination;
    }
    
    public boolean deleteDestination(int id) throws SQLException{
        boolean rowDeleted;
        try(Connection connection = getConnection();
                PreparedStatement ps=connection.prepareStatement(DELETE_DESTINATION_SQL);){
            ps.setInt(1, id);
            rowDeleted = ps.executeUpdate()>0;
        }
        return rowDeleted;
    }
            
}
