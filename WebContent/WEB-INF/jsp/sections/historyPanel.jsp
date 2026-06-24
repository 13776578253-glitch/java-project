<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String topic = (String) request.getAttribute("topic");
if (topic == null) {
    topic = "body";
}
String endpoint = "body";
String action = "queryHistory";
if ("chronic".equals(topic)) {
    endpoint = "chronic";
} else if ("lifestyle".equals(topic)) {
    endpoint = "lifestyle";
}
%>
<section id="history" class="panel dashboard-panel">
    <div class="panel-title">
        <div>
            <p class="eyebrow">History</p>
            <h2>历史记录</h2>
        </div>
        <form action="${pageContext.request.contextPath}/<%= endpoint %>" method="get" class="inline-form">
            <input type="hidden" name="action" value="<%= action %>">
            <select name="range"><option>近 7 日</option><option selected>近 30 日</option><option>近半年</option></select>
            <button type="submit">查询</button>
        </form>
    </div>
    <table class="table">
        <thead>
        <tr><th>日期</th><th>主要指标</th><th>变化</th><th>说明</th></tr>
        </thead>
        <tbody>
        <% if ("body".equals(topic)) { %>
        <tr><td>06-24</td><td>体重 68.5kg / 体脂 22.0%</td><td>-0.3kg</td><td>趋势平稳</td></tr>
        <tr><td>06-23</td><td>体重 68.8kg / 体脂 22.2%</td><td>+0.1kg</td><td>轻微波动</td></tr>
        <% } else if ("chronic".equals(topic)) { %>
        <tr><td>06-24</td><td>血压 120/80 / 血糖 5.2</td><td>稳定</td><td>处于参考范围附近</td></tr>
        <tr><td>06-23</td><td>血压 124/82 / 心率 72</td><td>小幅下降</td><td>继续观察</td></tr>
        <% } else { %>
        <tr><td>06-24</td><td>步数 8200 / 睡眠 7.2h</td><td>提升</td><td>活动量充足</td></tr>
        <tr><td>06-23</td><td>步数 6400 / 睡眠 6.5h</td><td>一般</td><td>睡眠略短</td></tr>
        <% } %>
        </tbody>
    </table>
</section>
