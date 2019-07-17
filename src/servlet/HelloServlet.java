package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.User;

public class HelloServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User u=new User();
		String user,password,sex,email,introduce;
		String[] hobbies;
		
		try {
			request.setCharacterEncoding("utf-8"); 
			user=request.getParameter("user");
			password=request.getParameter("password");
			sex=request.getParameter("sex");
			email=request.getParameter("email");
			introduce=request.getParameter("introduce");
			hobbies=request.getParameterValues("hobby");
			
			u.setUser(user);
			u.setPassword(password);
			u.setSex(sex);
			u.setEmail(email);
			u.setHobbies(hobbies);
			u.setIntroduce(introduce);
			
			//把注册成功的user对象保存在session中
			request.getSession().setAttribute("regUser",u);
			request.getRequestDispatcher("../userInfo.jsp").forward(request,response);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
