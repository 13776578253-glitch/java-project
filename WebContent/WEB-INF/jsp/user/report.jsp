<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>综合健康报告</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/header.jsp" />
<main class="page-shell">
    <jsp:include page="/WEB-INF/jsp/common/nav.jsp" />
    <section class="hero compact-hero">
        <div>
            <p class="eyebrow">Report</p>
            <h1>综合健康报告</h1>
            <p class="hero-text">汇总体重体脂、慢性病指标、运动睡眠三个主题，形成阶段性报告、跨指标分析和综合建议。</p>
            <form action="${pageContext.request.contextPath}/report?action=generate" method="post" class="action-row">
                <button class="primary" type="submit">生成综合报告</button>
            </form>
        </div>
    </section>
    <% if (session.getAttribute("reportMessage") != null) { %>
    <div class="notice"><%= session.getAttribute("reportMessage") %></div>
    <% } %>
    <section class="dashboard-grid three">
        <div class="panel dashboard-panel"><p class="eyebrow">Body</p><h2>体重体脂摘要</h2><p class="muted">近 30 天体重小幅下降，体脂变化平稳。</p></div>
        <div class="panel dashboard-panel"><p class="eyebrow">Chronic</p><h2>慢性病指标摘要</h2><p class="muted">血压血糖暂无连续异常，建议继续观察波动。</p></div>
        <div class="panel dashboard-panel"><p class="eyebrow">Lifestyle</p><h2>运动睡眠摘要</h2><p class="muted">运动打卡较稳定，睡眠时长仍有提升空间。</p></div>
    </section>
    <jsp:include page="/WEB-INF/jsp/sections/chartPanel.jsp" />
    <jsp:include page="/WEB-INF/jsp/sections/advicePanel.jsp" />
    <jsp:include page="/WEB-INF/jsp/sections/literaturePanel.jsp" />
</main>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
</body>
</html>
