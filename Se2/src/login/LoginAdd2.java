package login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;

public class LoginAdd2 implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		req.setCharacterEncoding("euc-kr");
		res.setCharacterEncoding("euc-kr");
		
		HttpSession session = req.getSession();
		session.setAttribute("current_state", "loginadd2");
		return "/WEB-INF/login/loginAdd2.jsp";
	}
}