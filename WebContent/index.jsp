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
                <a class="button primary" href="${pageContext.request.contextPath}/login">用户登录</a>
                <a class="button" href="${pageContext.request.contextPath}/register">用户注册</a>
                <a class="button" href="${pageContext.request.contextPath}/admin/login">管理员入口</a>
            </div>
        </div>
    </section>
    <section class="module-grid">
        <a class="module-card" href="${pageContext.request.contextPath}/profile">
            <strong>健康档案</strong>
            <span>维护年龄、性别、身高、基础情况和慢性病记录。</span>
        </a>
        <a class="module-card" href="${pageContext.request.contextPath}/record/add">
            <strong>数据录入</strong>
            <span>录入体重、体脂、血压、血糖、运动和睡眠等数据。</span>
        </a>
        <a class="module-card" href="${pageContext.request.contextPath}/record/list">
            <strong>历史查询</strong>
            <span>按日期和指标类型查看健康数据历史记录。</span>
        </a>
        <a class="module-card" href="${pageContext.request.contextPath}/analysis">
            <strong>健康分析</strong>
            <span>展示 BMI、基础代谢、异常提醒和阶段性分析。</span>
        </a>
    </section>
</main>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
<script src="${pageContext.request.contextPath}/static/js/main.js"></script>
</body>
</html>
