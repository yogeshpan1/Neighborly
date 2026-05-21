package com.Neighborly.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Utility class for managing database connections.
 *
 * This class provides a central way to connect to the MySQL database.
 *
 * It handles:
 * - Loading the JDBC driver
 * - Creating database connections
 * - Keeping DB configuration in one place
 *
 * This avoids repeating connection logic throughout the project.
 */
public class DBconfig {

    private static final String URL = "jdbc:mysql://localhost:3306/neighborly";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    /**
     * Creates and returns a connection to the database.
     *
     * This method:
     * 1. Loads MySQL JDBC driver
     * 2. Connects using configured URL, username, and password
     * 3. Returns a Connection object if successful
     *
     * @return database Connection object, or null if connection fails
     */
    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(URL, USER, PASSWORD);

        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Database connection failed");
            e.printStackTrace();
            return null;
        }
    }
}