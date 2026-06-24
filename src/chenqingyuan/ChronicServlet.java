package chenqingyuan;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tanghaoli.AdviceService;

public class ChronicServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private final AdviceService adviceService = new AdviceService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        handle(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        handle(request, response);
    }

    private void handle(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String action = getAction(request);
        String section = "input";
        String message = "慢性病指标已提交，后续接入数据库保存。";

        if ("queryHistory".equals(action)) {
            section = "history";
            message = "已查询血压、血糖、血脂和心率历史记录，当前显示模拟数据。";
        } else if ("checkAbnormal".equals(action)) {
            section = "chart";
            message = "已完成基础异常判断：当前为课程设计演示结果。";
        } else if ("generateAdvice".equals(action)) {
            section = "advice";
            message = adviceService.generate("chronic");
        }

        request.getSession().setAttribute("chronicMessage", message);
        response.sendRedirect(request.getContextPath() + "/page?view=chronic&section=" + section);
    }

    private String getAction(HttpServletRequest request) {
        String action = request.getParameter("action");
        return action == null ? "save" : action;
    }
}
