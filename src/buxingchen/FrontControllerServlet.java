package buxingchen;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontControllerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private final Map<String, String> pageRoutes = new HashMap<String, String>();

    @Override
    public void init() throws ServletException {
        pageRoutes.put("/home", "/WEB-INF/jsp/user/userHome.jsp");
        pageRoutes.put("/login", "/WEB-INF/jsp/user/login.jsp");
        pageRoutes.put("/register", "/WEB-INF/jsp/user/register.jsp");
        pageRoutes.put("/profile", "/WEB-INF/jsp/user/profile.jsp");
        pageRoutes.put("/record/add", "/WEB-INF/jsp/health/healthRecordAdd.jsp");
        pageRoutes.put("/record/list", "/WEB-INF/jsp/health/healthRecordList.jsp");
        pageRoutes.put("/sport", "/WEB-INF/jsp/health/sportRecord.jsp");
        pageRoutes.put("/sleep", "/WEB-INF/jsp/health/sleepRecord.jsp");
        pageRoutes.put("/chronic", "/WEB-INF/jsp/health/chronicRecord.jsp");
        pageRoutes.put("/analysis", "/WEB-INF/jsp/analysis/healthAnalysis.jsp");
        pageRoutes.put("/report", "/WEB-INF/jsp/analysis/healthReport.jsp");
        pageRoutes.put("/prediction", "/WEB-INF/jsp/analysis/prediction.jsp");
        pageRoutes.put("/ai", "/WEB-INF/jsp/analysis/aiAdvice.jsp");
        pageRoutes.put("/admin/login", "/WEB-INF/jsp/admin/adminLogin.jsp");
        pageRoutes.put("/admin/home", "/WEB-INF/jsp/admin/adminHome.jsp");
        pageRoutes.put("/admin/users", "/WEB-INF/jsp/admin/userManage.jsp");
        pageRoutes.put("/admin/statistics", "/WEB-INF/jsp/admin/statistics.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String path = request.getServletPath();
        String target = pageRoutes.get(path);

        if (target == null) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            return;
        }

        request.getRequestDispatcher(target).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String path = request.getServletPath();
        if ("/login".equals(path)) {
            String username = request.getParameter("username");
            request.getSession().setAttribute("loginUser", username);
            request.setAttribute("message", "服务器已收到登录请求，当前为基础响应结构，后续接入 UserService。");
            request.getRequestDispatcher("/WEB-INF/jsp/user/userHome.jsp").forward(request, response);
            return;
        }

        if ("/admin/login".equals(path)) {
            request.setAttribute("message", "服务器已收到管理员登录请求，后续接入 AdminServlet 与 StatisticsService。");
            request.getRequestDispatcher("/WEB-INF/jsp/admin/adminHome.jsp").forward(request, response);
            return;
        }

        request.setAttribute("message", "服务器已收到表单提交，后续接入对应 Service 和 Dao。");
        doGet(request, response);
    }
}
