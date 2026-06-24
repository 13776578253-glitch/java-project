<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>运动睡眠主题页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/header.jsp" />
<main class="page-shell">
    <jsp:include page="/WEB-INF/jsp/common/nav.jsp" />
    <section class="hero compact-hero">
        <div>
            <p class="eyebrow">Lifestyle</p>
            <h1>运动睡眠数据分析</h1>
            <p class="hero-text">在同一页面查看运动和睡眠录入、历史趋势、恢复状态、预测分析、AI 建议和参考说明。</p>
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
