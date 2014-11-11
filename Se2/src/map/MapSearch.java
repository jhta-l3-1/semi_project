package map;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;

public class MapSearch implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		res.setCharacterEncoding("euc-kr");
		req.setCharacterEncoding("euc-kr");
		HttpSession session = req.getSession();
		session.setAttribute("current_state", "mapsearch");
		
		return  "/map/mapSearch.jsp";
	}

}
