
package com.ImportExcel;
import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;

import org.apache.poi.hssf.usermodel.HSSFCell;

import com.mysql.cj.xdevapi.Statement;
import com.mysql.jdbc.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DataImport extends HttpServlet
{

    private static final long serialVersionUID = 1L;

    public DataImport()
    {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

    }

    @SuppressWarnings("rawtypes")
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        try
        {
            String file = request.getParameter("file");

            String fileName1=""+file+"";

            ArrayList dataHolder = read.readExcelFile (fileName1);

          	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/irms","root","");
            System.out.println("Connection :"+con);
            @SuppressWarnings("unused")
            Statement sql_statement = (Statement) con.createStatement();
            String jdbc_insert_sql = "INSERT INTO companies"
                    + "(name, address, No_of_employee,reg_year,reg_country) VALUES"
                    + "(?,?,?,?,?)";

            java.sql.PreparedStatement ps = con.prepareStatement(jdbc_insert_sql);
            int count=0;

            ArrayList cellStoreArrayList=null;
            for(int i=1;i<dataHolder.size();i++)
            {
                cellStoreArrayList=(ArrayList)dataHolder.get(i);
                ps.setString(1,((HSSFCell)cellStoreArrayList.get(0)).toString());
                ps.setString(2,((HSSFCell)cellStoreArrayList.get(1)).toString());
                ps.setString(3,((HSSFCell)cellStoreArrayList.get(2)).toString());
                
                count= ps.executeUpdate();
            }
            if(count>0)
            {
                for (int j=1;j < dataHolder.size(); j++)
                {
                    cellStoreArrayList=(ArrayList)dataHolder.get(j);
                    System.out.println(((HSSFCell)cellStoreArrayList.get(0)).toString());
                    System.out.println(((HSSFCell)cellStoreArrayList.get(1)).toString());
                    System.out.println(((HSSFCell)cellStoreArrayList.get(2)).toString());
                }
            }

        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

}