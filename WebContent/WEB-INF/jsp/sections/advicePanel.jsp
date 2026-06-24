<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String topic = (String) request.getAttribute("topic");
if (topic == null) {
    topic = "body";
}
String endpoint = topic;
if ("report".equals(topic)) {
    endpoint = "report";
}
String messageKey = topic + "Message";
Object message = session.getAttribute(messageKey);
%>
<section id="advice" class="panel dashboard-panel">
    <div class="panel-title">
        <div>
            <p class="eyebrow">AI Advice</p>
            <h2>AI 健康建议</h2>
        </div>
        <% if (!"report".equals(topic)) { %>
        <form action="${pageContext.request.contextPath}/<%= endpoint %>?action=generateAdvice" method="post">
            <button type="submit">生成建议</button>
        </form>
        <% } %>
    </div>
    <% if (message != null) { %>
    <div class="notice"><%= message %></div>
    <% } %>
    <% if ("body".equals(topic)) { %>
    <p class="muted">建议优先保持每日体重记录，结合饮食、睡眠和力量训练理解体脂变化，不只看单日波动。</p>
    <% } else if ("chronic".equals(topic)) { %>
    <p class="muted">建议记录血压血糖时同步记录饮食、运动、情绪和用药背景，异常连续出现时应咨询专业医生。</p>
    <% } else if ("lifestyle".equals(topic)) { %>
    <p class="muted">建议先稳定睡眠时间，再逐步提高中高强度活动时间，避免短期负荷过高。</p>
    <% } else { %>
    <p class="muted">综合建议会汇总各主题状态，给出阶段性健康管理方向。</p>
    <% } %>
</section>
