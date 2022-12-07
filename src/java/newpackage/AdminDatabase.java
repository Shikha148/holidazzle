/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.sql.*;
/**
 *
 * @author Shivam
 */
public class AdminDatabase {
    Connection con ;

    public AdminDatabase(Connection con) {
        this.con = con;
    }
    
    //for register user 
    public boolean saveUser(User user){
        boolean set = false;
        try{
            //Insert register data to database
            String query = "insert into admin(name,email,password) values(?,?,?)";
           
           PreparedStatement pt = this.con.prepareStatement(query);
           pt.setString(1, user.getName());
           pt.setString(2, user.getEmail());
           pt.setString(3, user.getPassword());
           
           pt.executeUpdate();
           set = true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
    
    //user login
    public User logUser(String email,String pass)
    {
        User user = null;
        try
        {
            String query = "select * from admin where email=? and password=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1,email);
            pst.setString(2,pass);
            ResultSet rs = pst.executeQuery();
            if(rs.next())
            {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return user;
    }
}
