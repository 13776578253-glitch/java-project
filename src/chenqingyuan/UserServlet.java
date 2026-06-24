package chenqingyuan;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String action = getAction(request);
        if ("registerPage".equals(action)) {
            request.getRequestDispatcher("/WEB-INF/jsp/auth/register.jsp").forward(request, response);
            return;
        }
        if ("logout".equals(action)) {
            request.getSession().invalidate();
            response.sendRedirect(request.getContextPath() + "/index.jsp");
            return;
        }

        request.getRequestDispatcher("/WEB-INF/jsp/auth/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String action = getAction(request);
        if ("register".equals(action)) {
            request.setAttribute("message", "注册信息已提交，当前为基础响应结构，后续接入用户数据库。");
            request.getRequestDispatcher("/WEB-INF/jsp/auth/login.jsp").forward(request, response);
            return;
        }

        String username = request.getParameter("username");
        if (username == null || username.trim().length() == 0) {
            username = "演示用户";
        }
        request.getSession().setAttribute("loginUser", username);
        response.sendRedirect(request.getContextPath() + "/page?view=home");
    }

    private String getAction(HttpServletRequest request) {
        String action = request.getParameter("action");
        return action == null ? "loginPage" : action;
    }
}
