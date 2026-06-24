<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>健康监测与智能分析平台</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/header.jsp" />
<main class="page-shell">
    <section class="hero">
        <div>
            <p class="eyebrow">Java Web Course Design</p>
            <h1>健康监测与智能分析平台</h1>
            <p class="hero-text">
                面向多用户的日常健康管理系统，围绕健康档案、个人数据录入、历史查询、
                数据分析、智能建议和管理员统计展开。
            </p>
            <div class="action-row">
                <a class="button primary" href="${pageContext.request.contextPath}/auth?action=loginPage">用户登录</a>
                <a class="button" href="${pageContext.request.contextPath}/auth?action=registerPage">用户注册</a>
                <a class="button" href="${pageContext.request.contextPath}/admin?action=home">管理员入口</a>
            </div>
        </div>
    </section>
    <section class="module-grid">
        <a class="module-card" href="${pageContext.request.contextPath}/page?view=body">
            <strong>体重体脂</strong>
            <span>录入、历史记录、BMI 图表、趋势预测、AI 建议和参考文献。</span>
        </a>
        <a class="module-card" href="${pageContext.request.contextPath}/page?view=chronic">
            <strong>慢性病指标</strong>
            <span>血压、血糖、血脂、心率的记录、波动分析和异常提醒。</span>
        </a>
        <a class="module-card" href="${pageContext.request.contextPath}/page?view=lifestyle">
            <strong>运动睡眠</strong>
            <span>运动和睡眠录入、趋势图表、恢复状态和生活方式建议。</span>
        </a>
        <a class="module-card" href="${pageContext.request.contextPath}/page?view=report">
            <strong>健康报告</strong>
            <span>多主题汇总、阶段性报告、跨指标分析和综合建议。</span>
        </a>
    </section>
</main>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
<script src="${pageContext.request.contextPath}/static/js/main.js"></script>
</body>
</html>
