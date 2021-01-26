/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Json;

import Json.testModel;
import java.util.ArrayList;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.sql.*;
import javax.ws.rs.POST;
/**
 *
 * @author user
 */

@Path("testController")
public class testController {
    
   @GET
   @Path("/getData")
   @Produces(MediaType.APPLICATION_JSON)
   public ArrayList<testModel> getDataInJSON() throws ClassNotFoundException, SQLException{
        
        ArrayList<testModel> students = new ArrayList<>();
     
        String url="jdbc:mysql://localhost:3306/ipproject?zeroDateTimeBehavior=convertToNull";
        String user="root";
        String password="";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection(url,user,password);
        String query= "SELECT * FROM `users`";
        
        Statement st=con.createStatement();
        ResultSet rs = st.executeQuery(query);
         
        while(rs.next())
        {
            testModel s=new testModel();
            s.setUser(rs.getInt("user_id"));
            s.setUsername(rs.getString("username"));        
            s.setEmail(rs.getString("email"));
            s.setPassword(rs.getString("password"));
            
            students.add(s);
        }
        return students;
        
   
   }
   
   
  
   
   
}
