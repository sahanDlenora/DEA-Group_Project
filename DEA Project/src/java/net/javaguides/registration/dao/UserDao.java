package net.javaguides.registration.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import net.javaguides.registration.model.User;

public class UserDao {

    public int registerUser(User user) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO user"
                + "(name,email,phone_number,password) VALUES"
                + "(?,?,?,?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/deaproject_db","root","");
                PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {

            
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPnumber());
            preparedStatement.setString(4, user.getPassword());

            System.out.println("preparedStatement");

            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {

            e.printStackTrace();
        }
        return result;
    }

}
