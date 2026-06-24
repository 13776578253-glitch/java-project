<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>健康数据录入</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/header.jsp" />
<main class="page-shell">
    <section class="panel">
        <h2>个人健康数据录入</h2>
        <p class="muted">对应 chenqingyuan 包：录入体重、体脂、血压、血糖、睡眠和运动等动态数据。</p>
        <form data-demo-form="true" action="${pageContext.request.contextPath}/record/add" method="post" class="form-grid">
            <div class="field"><label>记录日期</label><input name="recordDate" type="date"></div>
            <div class="field"><label>体重 kg</label><input name="weight" type="number" step="0.1"></div>
            <div class="field"><label>体脂率 %</label><input name="bodyFat" type="number" step="0.1"></div>
            <div class="field"><label>肌肉率 %</label><input name="muscleRate" type="number" step="0.1"></div>
            <div class="field"><label>血压 mmHg</label><input name="bloodPressure" placeholder="例如 120/80"></div>
            <div class="field"><label>血糖 mmol/L</label><input name="bloodSugar" type="number" step="0.1"></div>
            <div class="field"><label>睡眠时长 h</label><input name="sleepHours" type="number" step="0.1"></div>
            <div class="field"><label>步数</label><input name="steps" type="number" min="0"></div>
            <div class="action-row"><button class="primary" type="submit">提交记录</button></div>
        </form>
    </section>
</main>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
<script src="${pageContext.request.contextPath}/static/js/main.js"></script>
</body>
</html>
