<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String topic = (String) request.getAttribute("topic");
if (topic == null) {
    topic = "body";
}
String endpoint = "body";
if ("lifestyle".equals(topic)) {
    endpoint = "lifestyle";
}
%>
<section id="prediction" class="panel dashboard-panel">
    <div class="panel-title">
        <div>
            <p class="eyebrow">Prediction</p>
            <h2>基于历史记录的预测</h2>
        </div>
        <% if (!"chronic".equals(topic)) { %>
        <form action="${pageContext.request.contextPath}/<%= endpoint %>?action=predict" method="post">
            <button type="submit">生成预测</button>
        </form>
        <% } %>
    </div>
    <% if ("chronic".equals(topic)) { %>
    <p class="muted">慢性病主题以异常提醒和参考范围为主，不输出医疗诊断式预测。</p>
    <% } else if ("body".equals(topic)) { %>
    <p class="muted">根据最近记录，体重可能保持小幅下降，体脂趋势需要结合运动和睡眠一起判断。</p>
    <% } else { %>
    <p class="muted">运动量提升时，睡眠稳定性通常更容易改善；若睡眠不足，恢复状态可能下降。</p>
    <% } %>
</section>
