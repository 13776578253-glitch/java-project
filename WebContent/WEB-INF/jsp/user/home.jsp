<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>健康总览</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/header.jsp" />
<main class="page-shell">
    <jsp:include page="/WEB-INF/jsp/common/nav.jsp" />
    <section class="hero compact-hero">
        <div>
            <p class="eyebrow">Overview</p>
            <h1>健康总览</h1>
            <p class="hero-text">从这里查看今日摘要、最近异常、快捷入口和各健康主题的最新状态。</p>
        </div>
    </section>
    <section class="module-grid">
        <a class="module-card" href="${pageContext.request.contextPath}/page?view=body">
            <strong>体重体脂</strong><span>68.5 kg · BMI 待计算 · 趋势平稳</span>
        </a>
        <a class="module-card" href="${pageContext.request.contextPath}/page?view=chronic">
            <strong>慢性病指标</strong><span>血压 120/80 · 血糖 5.2 · 暂无连续异常</span>
        </a>
        <a class="module-card" href="${pageContext.request.contextPath}/page?view=lifestyle">
            <strong>运动睡眠</strong><span>步数 8200 · 睡眠 7.2h · 恢复良好</span>
        </a>
        <a class="module-card" href="${pageContext.request.contextPath}/page?view=report">
            <strong>健康报告</strong><span>生成阶段性健康总结与跨主题建议。</span>
        </a>
    </section>
    <section class="dashboard-grid two">
        <div class="panel dashboard-panel">
            <p class="eyebrow">Alert</p>
            <h2>最近异常</h2>
            <p class="muted">当前没有连续异常记录。建议继续保持体重、血压、运动和睡眠的稳定记录。</p>
        </div>
        <div class="panel dashboard-panel">
            <p class="eyebrow">Quick Input</p>
            <h2>快捷录入</h2>
            <div class="action-row">
                <a class="button primary" href="${pageContext.request.contextPath}/page?view=body&section=input">录入体重体脂</a>
                <a class="button" href="${pageContext.request.contextPath}/page?view=chronic&section=input">录入慢性病指标</a>
                <a class="button" href="${pageContext.request.contextPath}/page?view=lifestyle&section=input">录入运动睡眠</a>
            </div>
        </div>
    </section>
</main>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
</body>
</html>
