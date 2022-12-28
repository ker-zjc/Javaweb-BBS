package servlet;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Objects;

@WebServlet("/reg")
public class regServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        request.setCharacterEncoding("gbk");
        String uName = request.getParameter("uName");
        String uPass = request.getParameter("uPass");
        String rePass = request.getParameter("rePass");
        String gender = request.getParameter("sex");
        String head = request.getParameter("img");

        if(!Objects.equals(uPass, rePass)){
            String reason = "password error";
            HttpSession session=request.getSession(true);
            session.setAttribute("reason",reason);
            request.getRequestDispatcher("/welcome.jsp").forward(request,response);
        }else {
            UserDao userDao = new UserDaoImpl();
            User user = new User();
            user.setUserName(uName);
            user.setUserPass(uPass);
            user.setGender(Integer.valueOf(gender));
            user.setHead(head);
            userDao.addUser(user);
            User chkUser;
            chkUser=userDao.findUser(uName);
            if (chkUser.getUserName()!=null){
                String result = "success";
                HttpSession session=request.getSession(true);
                session.setAttribute("result",result);
                request.getRequestDispatcher("/welcome.jsp").forward(request,response);
            }
        }
    }
}
