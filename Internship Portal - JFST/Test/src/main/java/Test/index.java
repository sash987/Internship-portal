package Test;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/index")
public class index extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		HttpSession session=request.getSession();
	
		RequestDispatcher dispatcher=null;
		PrintWriter out=response.getWriter();
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test?useSSL=false","root","freedom!");
				PreparedStatement pst=con.prepareStatement("select * from login where uname=? and password=?");
				pst.setString(1, username);
				pst.setString(2, password);
				ResultSet rs=pst.executeQuery();
				if(rs.next()) {
					
					session.setAttribute("name", rs.getString("uname"));
					dispatcher=request.getRequestDispatcher("admindashboard.jsp");
				}else {
					request.setAttribute("status", "Failed");
					dispatcher=request.getRequestDispatcher("index.jsp");
				}
				dispatcher.forward(request, response);
			
		}
		catch(Exception e) {
			e.printStackTrace();		}
//		if(username.equals("mukta")&& password.equals("abhir"))
//		{
//			response.sendRedirect("sucess.jsp");
//		}else {
//			response.sendRedirect("index.jsp");
//		}
	}

}
