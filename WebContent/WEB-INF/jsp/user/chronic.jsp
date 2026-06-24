<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>慢性病指标主题页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/header.jsp" />
<main class="page-shell">
    <jsp:include page="/WEB-INF/jsp/common/nav.jsp" />
    <section class="hero compact-hero">
        <div>
            <p class="eyebrow">Chronic Monitor</p>
            <h1>慢性病指标监测分析</h1>
            <p class="hero-text">围绕血压、血糖、血脂、心率形成录入、历史、波动图表、异常提醒、AI 建议和参考范围的闭环。</p>
        </div>
    </section>
    <jsp:include page="/WEB-INF/jsp/sections/inputPanel.jsp" />
    <jsp:include page="/WEB-INF/jsp/sections/historyPanel.jsp" />
    <jsp:include page="/WEB-INF/jsp/sections/chartPanel.jsp" />
    <form action="${pageContext.request.contextPath}/chronic?action=checkAbnormal" method="post" class="panel dashboard-panel">
        <div class="panel-title">
            <div><p class="eyebrow">Abnormal Check</p><h2>异常提醒</h2></div>
            <button type="submit">执行异常判断</button>
        </div>
        <p class="muted">系统根据参考范围和短期波动进行辅助提醒，不输出医学诊断结论。</p>
    </form>
    <jsp:include page="/WEB-INF/jsp/sections/advicePanel.jsp" />
    <jsp:include page="/WEB-INF/jsp/sections/literaturePanel.jsp" />
</main>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
<script src="${pageContext.request.contextPath}/static/js/main.js"></script>
</body>
</html>
