<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>体重体脂主题页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/header.jsp" />
<main class="page-shell">
    <jsp:include page="/WEB-INF/jsp/common/nav.jsp" />
    <section class="hero compact-hero">
        <div>
            <p class="eyebrow">Body Metrics</p>
            <h1>体重体脂完整分析</h1>
            <p class="hero-text">同一页面内完成体重体脂录入、历史记录查询、BMI/体脂图表、趋势预测、AI 建议和相关参考说明。</p>
        </div>
    </section>
    <jsp:include page="/WEB-INF/jsp/sections/inputPanel.jsp" />
    <jsp:include page="/WEB-INF/jsp/sections/historyPanel.jsp" />
    <jsp:include page="/WEB-INF/jsp/sections/chartPanel.jsp" />
    <jsp:include page="/WEB-INF/jsp/sections/predictionPanel.jsp" />
    <jsp:include page="/WEB-INF/jsp/sections/advicePanel.jsp" />
    <jsp:include page="/WEB-INF/jsp/sections/literaturePanel.jsp" />
</main>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
<script src="${pageContext.request.contextPath}/static/js/main.js"></script>
</body>
</html>
