package servlet;

import dao.TopicDao;
import dao.impl.TopicDaoImpl;
import entity.Topic;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/post")
public class postServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession(true);

        String title = request.getParameter("title");
        String content = request.getParameter("content");
        User user = (User) session.getAttribute("user");
        int uId = user.getUserId();
//        Date publishTime = new Date();
//        Date modifyTime = publishTime;
        int boardId = (int) session.getAttribute("boardId");

        Topic topic = new Topic();
        topic.setTitle(title);
        topic.setContent(content);
//        topic.setPublishTime(publishTime);
//        topic.setModifyTime(modifyTime);
        topic.setUserId(uId);
        topic.setBoardId(boardId);

        TopicDao topicDao = new TopicDaoImpl();
        topicDao.addTopic(topic);

        request.getRequestDispatcher("/list").forward(request,response);

    }
}
