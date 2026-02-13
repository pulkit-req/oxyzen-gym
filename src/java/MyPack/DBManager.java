

package MyPack;

import java.sql.*;

public class DBManager 
{
    Connection con=null;
    ResultSet rs=null;
    PreparedStatement pd=null;
    public DBManager()throws Exception
    {
        Class.forName("com.mysql.jdbc.Driver");
    }
    public Connection getCon()throws Exception
    {
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/oxyzengym","root","");
        return con;
    }
    //code for insert update delete data
    public boolean MyInsertUpdateDelete(String command)throws Exception
    {
        pd=getCon().prepareStatement(command);
        int n=pd.executeUpdate(command);
        if(n>0)
            return true;
        else
            return false;
    }
    //code for display result
    public ResultSet DisplayRecord(String command)throws Exception
    {
        pd=getCon().prepareStatement(command);
        rs=pd.executeQuery(command);
        return rs;
    }
}
 