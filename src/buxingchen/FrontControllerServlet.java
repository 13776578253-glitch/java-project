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

    private final Map<String, String> viewRoutes = new HashMap<String, String>();

    @Override
    public void init() throws ServletException {
        viewRoutes.put("home", "/WEB-INF/jsp/user/home.jsp");
        viewRoutes.put("body", "/WEB-INF/jsp/user/body.jsp");
        viewRoutes.put("chronic", "/WEB-INF/jsp/user/chronic.jsp");
        viewRoutes.put("lifestyle", "/WEB-INF/jsp/user/lifestyle.jsp");
        viewRoutes.put("report", "/WEB-INF/jsp/user/report.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String view = request.getParameter("view");
        if (view == null || view.trim().length() == 0) {
            view = "home";
        }

        String target = viewRoutes.get(view);

        if (target == null) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            return;
        }

        String section = request.getParameter("section");
        if (section == null || section.trim().length() == 0) {
            section = "overview";
        }

        request.setAttribute("view", view);
        request.setAttribute("topic", view);
        request.setAttribute("section", section);
        request.getRequestDispatcher(target).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
