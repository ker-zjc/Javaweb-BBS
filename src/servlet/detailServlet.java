package servlet;

import dao.ReplyDao;
import dao.TopicDao;
import dao.impl.ReplyDaoImpl;
import dao.impl.TopicDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/detail")
public class detailServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.getRequestDispatcher("/reply.jsp").forward(request,response);
    }

    protected  void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        int boardId;
        int topicId;
//        if (request.getParameter("boardId")==null||request.getParameter("topicId")==null) {
            boardId = Integer.parseInt(request.getParameter("boardId"));
            topicId = Integer.parseInt(request.getParameter("topicId"));
//        }else{
//            boardId = (int) request.getAttribute("boardId");
//            topicId = (int) request.getAttribute("topicId");
//        }
        TopicDao topicDao = new TopicDaoImpl();
        ReplyDao replyDao = new ReplyDaoImpl();

        HttpSession session = request.getSession(true);
        session.setAttribute("replyDao",replyDao);
        session.setAttribute("boardId",boardId);
        session.setAttribute("topicId",topicId);
        session.setAttribute("topicDao",topicDao);

        request.getRequestDispatcher("/detail.jsp").forward(request,response);
    }
}
