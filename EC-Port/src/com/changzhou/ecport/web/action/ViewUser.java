package com.changzhou.ecport.web.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.changzhou.ecport.entity.ShopCartList;
import com.changzhou.ecport.entity.User;
import com.changzhou.ecport.entity.UserList;

public class ViewUser extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);
		UserList users = (UserList) session.getAttribute("user");
		User user =users.getUserList();
		request.setAttribute("user", user);
		request.getRequestDispatcher("../user/userinfo.jsp").forward(request, response);

	}

}
