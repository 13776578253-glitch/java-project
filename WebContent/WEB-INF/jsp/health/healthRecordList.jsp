<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>健康数据历史查询</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/header.jsp" />
<main class="page-shell">
    <section class="panel">
        <h2>健康数据历史查询</h2>
        <p class="muted">对应 buxingchen 包：按日期、指标类型查询近 7 天或近 30 天健康数据。</p>
        <form action="${pageContext.request.contextPath}/record/list" method="get" class="form-grid">
            <div class="field"><label>开始日期</label><input name="startDate" type="date"></div>
            <div class="field"><label>结束日期</label><input name="endDate" type="date"></div>
            <div class="field"><label>指标类型</label><select name="type"><option>全部</option><option>体重</option><option>血压</option><option>血糖</option><option>睡眠</option></select></div>
            <div class="action-row"><button class="primary" type="submit">查询</button></div>
        </form>
        <table class="table">
            <thead><tr><th>日期</th><th>体重</th><th>体脂</th><th>血压</th><th>血糖</th><th>说明</th></tr></thead>
            <tbody>
            <tr><td>示例数据</td><td>68.5 kg</td><td>22.0%</td><td>120/80</td><td>5.2</td><td>后续由 HistoryQueryServlet 填充</td></tr>
            </tbody>
        </table>
    </section>
</main>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
</body>
</html>
