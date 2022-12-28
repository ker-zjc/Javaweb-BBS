package servlet;

import dao.ReplyDao;
import dao.impl.ReplyDaoImpl;
import entity.Reply;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/reply")
public class replyServlet extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession(true);

        String title = request.getParameter("title");
        String content = request.getParameter("content");
        User user = (User) session.getAttribute("user");
        int uId = user.getUserId();
        int topicId = (int) session.getAttribute("topicId");


        Reply reply = new Reply();
        reply.setTitle(title);
        reply.setContent(content);
        reply.setUserId(uId);
        reply.setTopicId(topicId);

        ReplyDao replyDao = new ReplyDaoImpl();
        replyDao.addReply(reply);
//        request.setAttribute("boardId",boardId);
//        request.setAttribute("topicId",topicId);
        request.getRequestDispatcher("/detail").forward(request,response);
    }
    protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{

    }
}
