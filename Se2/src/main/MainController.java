package main;

import java.io.IOError;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import command.CommandFactory;


public class MainController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		req.setCharacterEncoding("euc-kr");
		resp.setCharacterEncoding("euc-kr");

		String nei = req.getParameter("neighbor");

		HttpSession session = req.getSession();
		String current = (String)session.getAttribute("current_state");
		String url = "";

		CommandFactory facotry = CommandFactory.getInstance();
		Command inei = facotry.createCommand(nei);
		url=(String)inei.processCommand(req, resp);

		RequestDispatcher view = req.getRequestDispatcher(url);            
		view.forward(req, resp);
	}
}