<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String topic = (String) request.getAttribute("topic");
if (topic == null) {
    topic = "body";
}
%>
<section id="input" class="panel dashboard-panel">
    <div class="panel-title">
        <div>
            <p class="eyebrow">Input</p>
            <h2>数据录入</h2>
        </div>
        <span class="pill">主题：<%= topic %></span>
    </div>

    <% if ("body".equals(topic)) { %>
    <form data-demo-form="true" action="${pageContext.request.contextPath}/body?action=save" method="post" class="form-grid">
        <div class="field"><label>记录日期</label><input name="recordDate" type="date"></div>
        <div class="field"><label>身高 cm</label><input name="height" type="number" step="0.1"></div>
        <div class="field"><label>体重 kg</label><input name="weight" type="number" step="0.1"></div>
        <div class="field"><label>体脂率 %</label><input name="bodyFat" type="number" step="0.1"></div>
        <div class="field"><label>肌肉率 %</label><input name="muscleRate" type="number" step="0.1"></div>
        <div class="field"><label>目标体重 kg</label><input name="targetWeight" type="number" step="0.1"></div>
        <div class="action-row"><button class="primary" type="submit">保存体重体脂记录</button></div>
    </form>
    <% } else if ("chronic".equals(topic)) { %>
    <form data-demo-form="true" action="${pageContext.request.contextPath}/chronic?action=save" method="post" class="form-grid">
        <div class="field"><label>记录日期</label><input name="recordDate" type="date"></div>
        <div class="field"><label>血压 mmHg</label><input name="bloodPressure" placeholder="例如 120/80"></div>
        <div class="field"><label>血糖 mmol/L</label><input name="bloodSugar" type="number" step="0.1"></div>
        <div class="field"><label>血脂 mmol/L</label><input name="bloodFat" type="number" step="0.1"></div>
        <div class="field"><label>静息心率 次/分</label><input name="heartRate" type="number" min="1"></div>
        <div class="field"><label>备注</label><input name="remark" placeholder="饮食、运动、用药等背景"></div>
        <div class="action-row"><button class="primary" type="submit">保存慢性病指标</button></div>
    </form>
    <% } else if ("lifestyle".equals(topic)) { %>
    <form data-demo-form="true" action="${pageContext.request.contextPath}/lifestyle?action=saveSport" method="post" class="form-grid">
        <div class="field"><label>运动日期</label><input name="sportDate" type="date"></div>
        <div class="field"><label>步数</label><input name="steps" type="number" min="0"></div>
        <div class="field"><label>中高强度活动 min</label><input name="activeMinutes" type="number" min="0"></div>
        <div class="field"><label>入睡时间</label><input name="sleepTime" type="time"></div>
        <div class="field"><label>醒来时间</label><input name="wakeTime" type="time"></div>
        <div class="field"><label>睡眠时长 h</label><input name="sleepHours" type="number" step="0.1"></div>
        <div class="action-row">
            <button class="primary" type="submit">保存运动记录</button>
            <button type="submit" formaction="${pageContext.request.contextPath}/lifestyle?action=saveSleep">保存睡眠记录</button>
        </div>
    </form>
    <% } else { %>
    <p class="muted">综合报告页不直接录入单项数据，请到对应主题页维护记录。</p>
    <% } %>
</section>
