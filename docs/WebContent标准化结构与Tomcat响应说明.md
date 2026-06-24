# WebContent 标准化结构与 Tomcat 9.0 响应说明

## 一、当前建设目标

当前项目已经从“一个页面对应一个单一功能”调整为“按健康主题组织的混合界面”。每个主题页面内部都包含录入、历史记录、图表趋势、预测或异常提醒、AI 建议和参考说明。

该结构更适合健康监测类系统：用户查看体重体脂、慢性病指标或运动睡眠时，不需要跳到单独的统计分析页，而是在当前主题页内完成完整闭环。

## 二、WebContent 当前结构

```text
WebContent
├── index.jsp
├── static
│   ├── css
│   │   └── style.css
│   └── js
│       └── main.js
└── WEB-INF
    ├── web.xml
    ├── lib
    └── jsp
        ├── common
        │   ├── header.jsp
        │   ├── nav.jsp
        │   └── footer.jsp
        ├── auth
        │   ├── login.jsp
        │   └── register.jsp
        ├── user
        │   ├── home.jsp
        │   ├── body.jsp
        │   ├── chronic.jsp
        │   ├── lifestyle.jsp
        │   └── report.jsp
        ├── sections
        │   ├── inputPanel.jsp
        │   ├── historyPanel.jsp
        │   ├── chartPanel.jsp
        │   ├── predictionPanel.jsp
        │   ├── advicePanel.jsp
        │   └── literaturePanel.jsp
        └── admin
            └── admin.jsp
```

旧的单功能 JSP 页面已经清理，当前只保留按健康主题组织的新界面结构。

## 三、主题页面说明

| 页面 | 访问路径 | 页面内部模块 |
|---|---|---|
| `home.jsp` | `/page?view=home` | 今日摘要、最近异常、快捷入口、各主题最新状态 |
| `body.jsp` | `/page?view=body` | 体重体脂录入、历史记录、BMI/体脂图表、趋势预测、AI 建议、参考文献 |
| `chronic.jsp` | `/page?view=chronic` | 血压血糖血脂心率录入、历史记录、波动图表、异常提醒、AI 建议、参考范围 |
| `lifestyle.jsp` | `/page?view=lifestyle` | 运动睡眠录入、历史记录、趋势图表、恢复状态、运动睡眠建议、参考说明 |
| `report.jsp` | `/page?view=report` | 多主题汇总、阶段性报告、跨指标分析、综合建议 |
| `admin.jsp` | `/admin?action=home` | 用户列表、平台统计、BMI 分布、运动打卡统计、慢性病指标统计 |

## 四、Tomcat 9.0 响应链路

页面访问链路：

```text
浏览器访问 /page?view=body
  ↓
Tomcat 9.0 读取 WEB-INF/web.xml
  ↓
buxingchen.FrontControllerServlet
  ↓
设置 topic=body、section=overview
  ↓
转发到 /WEB-INF/jsp/user/body.jsp
  ↓
body.jsp include sections 中的多个区块
```

主题接口链路：

```text
body.jsp 内提交 POST /body?action=save
  ↓
chenqingyuan.BodyServlet
  ↓
处理主题动作并写入提示信息
  ↓
重定向回 /page?view=body&section=input
```

## 五、标准请求结构

页面路由：

```text
/page?view=home
/page?view=body
/page?view=chronic
/page?view=lifestyle
/page?view=report
/admin?action=home
```

主题接口：

```text
/auth?action=login
/auth?action=register
/auth?action=logout

/body?action=save
/body?action=queryHistory
/body?action=predict
/body?action=generateAdvice

/chronic?action=save
/chronic?action=queryHistory
/chronic?action=checkAbnormal
/chronic?action=generateAdvice

/lifestyle?action=saveSport
/lifestyle?action=saveSleep
/lifestyle?action=queryHistory
/lifestyle?action=predict
/lifestyle?action=generateAdvice

/report?action=generate

/admin?action=login
/admin?action=home
/admin?action=users
/admin?action=statistics
```

## 六、Servlet 分工

| Servlet | 映射 | 职责 |
|---|---|---|
| `buxingchen.FrontControllerServlet` | `/page` | 根据 `view` 转发到主题 JSP |
| `chenqingyuan.UserServlet` | `/auth` | 登录、注册、退出 |
| `chenqingyuan.BodyServlet` | `/body` | 体重体脂主题数据提交、查询、预测、建议入口 |
| `chenqingyuan.ChronicServlet` | `/chronic` | 慢性病指标录入、查询、异常判断、建议入口 |
| `buxingchen.LifestyleServlet` | `/lifestyle` | 运动睡眠记录保存、历史查询、预测和建议入口 |
| `tanghaoli.ReportServlet` | `/report` | 综合健康报告生成 |
| `buxingchen.AdminServlet` | `/admin` | 管理员入口、用户管理、平台统计 |

## 七、验收说明

当前阶段重点体现：

- Tomcat 9.0 能通过 `web.xml` 识别模块级 Servlet；
- 主题页面不是单一功能页，而是混合页面；
- 每个主题页包含录入、历史、图表、预测或异常提醒、AI 建议、参考说明；
- 页面按用户健康主题组织，Java 包仍按课程分工组织；
- 当前数据为模拟数据，后续可继续接入 Service、Dao 和数据库。
