/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.awt.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Parmanand.Saumya
 */
public class PackageDAO {
    private String jdbcURL="jdbc:mysql://localhost:3306/holidazzle";
    private String jdbcUsername="root";
    private String jdbcPassword="saumya@123";
    
    private static final String INSERT_PACKAGE_SQL="INSERT INTO package"+"(name,days_inc,price,air_assistance,city_tour,welcome_drinks,daily_buffet,guide,special_for) VALUES"+"(?,?,?,?,?,?,?,?,?);";
    private static final String SELECT_PACKAGE_BY_ID="select package_id,name,days_inc,price,air_assistance,city_tour,welcome_drinks,daily_buffet,guide,special_for from package where package_id =?";
    private static final String SELECT_ALL_PACKAGE="select * from package";
    private static final String DELETE_PACKAGE_SQL="delete from package where package_id=?;";
    private static final String UPDATE_PACKAGE_SQL="update package set name=?,days_inc=?,price=?,air_assistance=?,city_tour=?,welcome_drinks=?,daily_buffet=?,guide=?,special_for=? where package_id = ?;";

    public void insertPackage(Package pack) throws SQLException {
        try(Connection connection=ConnectionPro.getConnection();
            PreparedStatement preparedStatement=connection.prepareStatement(INSERT_PACKAGE_SQL)){
            preparedStatement.setString(1,pack.getName());
            preparedStatement.setInt(2,pack.getDays());
            preparedStatement.setFloat(3,pack.getPrice());
            preparedStatement.setString(4,pack.getAir_assistance());
            preparedStatement.setString(5,pack.getCity_tour());
            preparedStatement.setString(6,pack.getWelcome_drinks());
            preparedStatement.setString(7,pack.getDaily_buffet());
            preparedStatement.setString(8,pack.getGuide());
            preparedStatement.setString(9,pack.getSpecial_for());
            
            preparedStatement.executeUpdate();
          
        }catch(Exception e){
            e.printStackTrace();
        } 
    }
    public boolean updatePackage(Package pack) throws SQLException{
        boolean rowUpdated = false;
        try(Connection connection=ConnectionPro.getConnection();
            PreparedStatement statement=connection.prepareStatement(UPDATE_PACKAGE_SQL)){
               statement.setString(1,pack.getName());
               statement.setInt(2,pack.getDays());
               statement.setFloat(3,pack.getPrice());
               statement.setString(4,pack.getAir_assistance());
               statement.setString(5,pack.getCity_tour());
               statement.setString(6,pack.getWelcome_drinks());
               statement.setString(7,pack.getDaily_buffet());
               statement.setString(8,pack.getGuide());
               statement.setString(9,pack.getSpecial_for());
               
               statement.setInt(10,pack.getId());
               rowUpdated=statement.executeUpdate()>0;
            }
        return rowUpdated;
    }
    
    public Package selectPackage(int id)
    {
        Package pack=null;
        try(Connection conn=ConnectionPro.getConnection();
                PreparedStatement ps=conn.prepareStatement(SELECT_PACKAGE_BY_ID);){
            ps.setInt(1, id);
            System.out.println(ps);
            
            ResultSet rs=ps.executeQuery();
            
            while(rs.next())
            {
                String name=rs.getString("name");
                int days_inc=rs.getInt("days_inc"); 
                float price=rs.getFloat("price");
                String air_assistance=rs.getString("air_assistance");
                String city_tour=rs.getString("city_tour");
                String welcome_drinks=rs.getString("welcome_drinks");
                String daily_buffet=rs.getString("daily_buffet");
                String guide=rs.getString("guide");
                String special_for=rs.getString("special_for");
                
                pack=new Package(id,name,days_inc,price,air_assistance,city_tour,welcome_drinks,daily_buffet,guide,special_for);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return pack;
    }
    public ArrayList<Package> selectAllPackages()
    {
        ArrayList<Package> packs;
        packs = new ArrayList<>();
        try(Connection conn=ConnectionPro.getConnection();
                PreparedStatement ps=conn.prepareStatement(SELECT_ALL_PACKAGE);){
         
            System.out.println(ps);
            
            ResultSet rs=ps.executeQuery();
            
            while(rs.next())
            {
                int id=rs.getInt("package_id");
                String name=rs.getString("name");
                int days_inc=rs.getInt("days_inc"); 
                float price=rs.getFloat("price");
                String air_assistance=rs.getString("air_assistance");
                String city_tour=rs.getString("city_tour");
                String welcome_drinks=rs.getString("welcome_drinks");
                String daily_buffet=rs.getString("daily_buffet");
                String guide=rs.getString("guide");
                String special_for=rs.getString("special_for");
                
                packs.add(new Package(id,name,days_inc,price,air_assistance,city_tour,welcome_drinks,daily_buffet,guide,special_for));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return packs;
    }
    public boolean deletePackage(int id) throws SQLException
    {
        boolean rowDeleted = false;
        try(Connection conn=ConnectionPro.getConnection();
                PreparedStatement ps=conn.prepareStatement(DELETE_PACKAGE_SQL);){
            ps.setInt(1, id);
            rowDeleted=ps.executeUpdate()>0;
        }
        return rowDeleted;
    }
    
}
