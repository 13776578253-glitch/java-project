package buxingchen;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tanghaoli.AdviceService;
import tanghaoli.PredictionService;

public class LifestyleServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private final AdviceService adviceService = new AdviceService();
    private final PredictionService predictionService = new PredictionService();

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
        String message = "运动睡眠数据已提交，后续接入数据库保存。";

        if ("queryHistory".equals(action)) {
            section = "history";
            message = "已查询运动睡眠历史记录，当前显示模拟数据。";
        } else if ("generateAdvice".equals(action)) {
            section = "advice";
            message = adviceService.generate("lifestyle");
        } else if ("predict".equals(action)) {
            section = "prediction";
            message = predictionService.predict("lifestyle");
        }

        request.getSession().setAttribute("lifestyleMessage", message);
        response.sendRedirect(request.getContextPath() + "/page?view=lifestyle&section=" + section);
    }

    private String getAction(HttpServletRequest request) {
        String action = request.getParameter("action");
        return action == null ? "saveSport" : action;
    }
}
