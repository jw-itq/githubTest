package com.itcast.mybatis.test;

import java.sql.*;

public class TestJdbc {
    public static void main(String[] args){
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","123456");
            String sql = "select * from user";
            preparedStatement = connection.prepareStatement(sql);

            resultSet = preparedStatement.getResultSet();

            System.out.println(resultSet.getString("username"));

            connection.close();
            preparedStatement.close();
            resultSet.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
