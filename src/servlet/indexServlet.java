package servlet;

import dao.BoardDao;
import dao.impl.BoardDaoImpl;
import entity.Board;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/index")
public class indexServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BoardDao boardDao = new BoardDaoImpl();
        Map mapBoard = boardDao.findBoard();
        List listMainBoard = (List)mapBoard.get(0);

        HttpSession session = request.getSession(true);
        session.setAttribute("mapBoard",mapBoard);
        session.setAttribute("listMainBoard",listMainBoard);

        request.getRequestDispatcher("/index.jsp").forward(request,response);


    }
}