package chenqingyuan;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tanghaoli.AdviceService;
import tanghaoli.PredictionService;

public class BodyServlet extends HttpServlet {
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
        String message = "体重体脂数据已提交，后续接入数据库保存。";

        if ("queryHistory".equals(action)) {
            section = "history";
            message = "已按条件查询体重体脂历史记录，当前显示模拟数据。";
        } else if ("predict".equals(action)) {
            section = "prediction";
            message = predictionService.predict("body");
        } else if ("generateAdvice".equals(action)) {
            section = "advice";
            message = adviceService.generate("body");
        }

        request.getSession().setAttribute("bodyMessage", message);
        response.sendRedirect(request.getContextPath() + "/page?view=body&section=" + section);
    }

    private String getAction(HttpServletRequest request) {
        String action = request.getParameter("action");
        return action == null ? "save" : action;
    }
}
