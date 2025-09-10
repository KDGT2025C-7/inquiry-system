package com.example.inquiry;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class csv
 */
public class csv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public csv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
            String url = "jdbc:postgresql://localhost/qqq";
    		String user = "a";
    		String password = "78459_ki";
    		/*String aaaaa = req.getParameter("aaaaa");*/
    		/*String tempDir = "/tmp";*/
            /*String filePath = tempDir + File.separator + aaaaa + "_qqa.csv";*/

            /*if (aaaaa == null || aaaaa.trim().isEmpty()) {
                aaaaa = "export"; 
            }*/
    		try (Connection connection = DriverManager.getConnection(url, user, password);
    				Statement statement = connection.createStatement()){
    			String sql = "COPY hito TO '/Users/a/aaaaa/hito.csv' WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',')";
    			/*COPY hito TO '/Users/a/aaaaa/hito.csv' WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',')*/
    			/*COPY qqa TO '/Users/a/aaaaa/qqa.csv' WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',')*/
                statement.execute(sql);
    			resp.sendRedirect("kanri");
    		} catch (SQLException e) {
    			/*generateCaptcha(req);*/
                /*out.println("Database exception: " + e.getMessage());*/
    			req.setAttribute("errorMessage", "データベースエラー: " + e.getMessage());
                RequestDispatcher rd = req.getRequestDispatcher("/jsp/error.jsp");
                rd.forward(req, resp);
    		}catch (Exception e) {
    			/*generateCaptcha(req);*/
                /*out.println("Exception" + e.getMessage());*/
    			req.setAttribute("errorMessage", "予期せぬエラー: " + e.getMessage());
                RequestDispatcher rd = req.getRequestDispatcher("/jsp/error.jsp");
                rd.forward(req, resp);
            } 

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "jdbc:postgresql://localhost/qqq";
		String user = "a";
		String password = "78459_ki";
		try (Connection connection = DriverManager.getConnection(url, user, password);
				Statement statement = connection.createStatement()){
			String oaa = req.getParameter("aaaa");
			String sql = oaa;
			
            statement.execute(sql);
			resp.sendRedirect("kanri");
		} catch (SQLException e) {
			/*generateCaptcha(req);*/
            /*out.println("Database exception: " + e.getMessage());*/
			req.setAttribute("errorMessage", "データベースエラー: " + e.getMessage());
            RequestDispatcher rd = req.getRequestDispatcher("/jsp/error.jsp");
            rd.forward(req, resp);
		}catch (Exception e) {
			/*generateCaptcha(req);*/
            /*out.println("Exception" + e.getMessage());*/
			req.setAttribute("errorMessage", "予期せぬエラー: " + e.getMessage());
            RequestDispatcher rd = req.getRequestDispatcher("/jsp/error.jsp");
            rd.forward(req, resp);
        } 
	}

}
