<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head><meta charset="UTF-8"><title>健康数据分析</title><link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css"></head>
<body>
<jsp:include page="/WEB-INF/jsp/common/header.jsp" />
<main class="page-shell">
    <section class="panel">
        <h2>健康数据分析</h2>
        <p class="muted">对应 chenqingyuan 包：根据身高体重计算 BMI，根据活动数据估算消耗，并给出基础分析。</p>
        <table class="table">
            <tr><th>分析项</th><th>当前状态</th><th>说明</th></tr>
            <tr><td>BMI</td><td>待计算</td><td>由 HealthAnalysisService 根据身高体重计算</td></tr>
            <tr><td>基础代谢</td><td>待计算</td><td>由年龄、性别、身高、体重估算</td></tr>
            <tr><td>异常提醒</td><td>待生成</td><td>根据血压、血糖、体重波动规则生成</td></tr>
        </table>
    </section>
</main>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
</body>
</html>
