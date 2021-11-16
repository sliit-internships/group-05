package com.RegisterHome.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.RegisterHome.model.User;

public class UserDao {

	public int registerUser(User user) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO user_register" +
            "  (id, userName, email, password) VALUES " +
            " (?, ?, ?, ?);";

        int result = 0;

        

        try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/mysql_database?useSSL=false", "root", "11111");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
            preparedStatement.setInt(1, 1);
            preparedStatement.setString(2, user.getUserName());
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setString(4, user.getPassword());

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();
        
        } catch (SQLException e) {
            // process sql exception
            e.printStackTrace();
        }
        return result;
    
}}

   