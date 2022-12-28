package servlet;


import dao.BoardDao;
import dao.UserDao;
import dao.impl.BoardDaoImpl;
import dao.impl.UserDaoImpl;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request,HttpServletResponse response)
                        throws ServletException,IOException{
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        request.setCharacterEncoding("gbk");
        String uName = request.getParameter("uName");
        String uPass = request.getParameter("uPass");

        UserDao userDao = new UserDaoImpl();
        User user = userDao.findUser(uName);

        if (user != null && user.getUserPass().equals(uPass)){
            HttpSession session=request.getSession(true);
            BoardDao boardDao = new BoardDaoImpl();
            Map mapBoard = boardDao.findBoard();
            List listMainBoard = (List)mapBoard.get(0);
            session.setAttribute("mapBoard",mapBoard);
            session.setAttribute("listMainBoard",listMainBoard);
            session.setAttribute("user",user);
            request.getRequestDispatcher("/index.jsp").forward(request,response);
        }else {
            response.sendRedirect("/login.jsp");
        }
    }
}
