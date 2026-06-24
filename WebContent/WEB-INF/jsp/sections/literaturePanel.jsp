<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String topic = (String) request.getAttribute("topic");
if (topic == null) {
    topic = "body";
}
%>
<section id="literature" class="panel dashboard-panel">
    <div class="panel-title">
        <div>
            <p class="eyebrow">Reference</p>
            <h2>相关文献与参考说明</h2>
        </div>
    </div>
    <% if ("body".equals(topic)) { %>
    <p class="muted">参考方向：BMI 分类、体脂率范围、体重变化与能量平衡。系统仅提供健康管理参考，不作为医学诊断。</p>
    <% } else if ("chronic".equals(topic)) { %>
    <p class="muted">参考方向：血压、血糖、血脂和静息心率常见参考范围。异常提示用于提醒关注，不替代医生诊断。</p>
    <% } else if ("lifestyle".equals(topic)) { %>
    <p class="muted">参考方向：成年人运动建议、睡眠时长建议、活动量与恢复状态关系。</p>
    <% } else { %>
    <p class="muted">综合报告参考各主题历史记录和趋势摘要，适合阶段性复盘。</p>
    <% } %>
</section>
