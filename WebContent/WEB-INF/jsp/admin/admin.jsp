<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>管理员管理</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/header.jsp" />
<main class="page-shell">
    <section class="hero compact-hero">
        <div>
            <p class="eyebrow">Admin</p>
            <h1>管理员管理</h1>
            <p class="hero-text">查看用户列表、平台统计、BMI 分布、运动打卡统计和慢性病指标分布。</p>
        </div>
    </section>
    <section class="dashboard-grid two">
        <div class="panel dashboard-panel">
            <h2>用户列表</h2>
            <table class="table"><tr><th>用户</th><th>状态</th><th>最近记录</th></tr><tr><td>演示用户</td><td>正常</td><td>今天</td></tr></table>
        </div>
        <div class="panel dashboard-panel">
            <h2>平台统计</h2>
            <table class="table"><tr><th>统计项</th><th>结果</th></tr><tr><td>用户总数</td><td>待接入数据库</td></tr><tr><td>BMI 分布</td><td>模拟展示</td></tr><tr><td>运动打卡</td><td>模拟展示</td></tr></table>
        </div>
    </section>
</main>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
</body>
</html>
