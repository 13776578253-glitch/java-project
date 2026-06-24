<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String topic = (String) request.getAttribute("topic");
if (topic == null) {
    topic = "body";
}
%>
<section id="chart" class="panel dashboard-panel">
    <div class="panel-title">
        <div>
            <p class="eyebrow">Charts</p>
            <h2>图表趋势</h2>
        </div>
        <span class="pill">近 30 日</span>
    </div>
    <div class="chart-grid">
        <div class="stat-card">
            <span>记录次数</span>
            <strong><%= "body".equals(topic) ? "24" : ("chronic".equals(topic) ? "18" : "21") %></strong>
        </div>
        <div class="stat-card">
            <span>主要趋势</span>
            <strong><%= "body".equals(topic) ? "缓慢下降" : ("chronic".equals(topic) ? "波动平稳" : "活动增加") %></strong>
        </div>
        <div class="stat-card">
            <span>风险提示</span>
            <strong><%= "chronic".equals(topic) ? "需观察" : "低" %></strong>
        </div>
    </div>
    <div class="mock-chart">
        <span style="height: 42%"></span>
        <span style="height: 56%"></span>
        <span style="height: 48%"></span>
        <span style="height: 68%"></span>
        <span style="height: 62%"></span>
        <span style="height: 74%"></span>
        <span style="height: 58%"></span>
        <span style="height: 82%"></span>
    </div>
</section>
