package servlet;

import dao.BoardDao;
import dao.ReplyDao;
import dao.TopicDao;
import dao.impl.BoardDaoImpl;
import dao.impl.ReplyDaoImpl;
import dao.impl.TopicDaoImpl;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/list")
public class listServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int boardId = Integer.parseInt(request.getParameter("boardId"));
//        int userId = Integer.parseInt(request.getParameter("user.userId"));
        TopicDao topicDao = new TopicDaoImpl();
        List topicList = topicDao.findListTopic(1,boardId);
        ReplyDao replyDao = new ReplyDaoImpl();
        BoardDao boardDao = new BoardDaoImpl();

        HttpSession session = request.getSession(true);
        session.setAttribute("boardId",boardId);
        session.setAttribute("boardDao",boardDao);
        session.setAttribute("topicList",topicList);
        session.setAttribute("replyDao",replyDao);
//        session.setAttribute("userId",userId);

        request.getRequestDispatcher("/list.jsp").forward(request,response);
    }
    protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        request.getRequestDispatcher("/post.jsp").forward(request,response);
    }
}
