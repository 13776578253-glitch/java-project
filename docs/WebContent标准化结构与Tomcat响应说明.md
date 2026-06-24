# WebContent 标准化结构与 Tomcat 9.0 响应说明

## 一、建设目标

结合《Java课程设计-功能分析文档》和《项目整体架构与前端页面规划》，当前阶段先完成 `WebContent` 的标准目录、基础 JSP 页面和最小 Servlet 响应结构。

本阶段重点不是马上完成所有业务逻辑，而是先让项目具备清晰的 Java Web 骨架：

- Tomcat 9.0 可以识别项目入口；
- `index.jsp` 可以作为系统首页访问；
- `WEB-INF/jsp` 下的页面通过 Servlet 转发访问；
- 静态资源统一放在 `static` 下；
- 页面模块和三人 `src` 包分工能够对应；
- 后续可以继续接入 Service、Dao 和数据库。

## 二、当前 WebContent 标准结构

```text
WebContent
├── index.jsp
├── static
│   ├── css
│   │   └── style.css
│   └── js
│       └── main.js
├── META-INF
│   └── MANIFEST.MF
└── WEB-INF
    ├── web.xml
    ├── lib
    └── jsp
        ├── common
        │   ├── header.jsp
        │   ├── menu.jsp
        │   └── footer.jsp
        ├── user
        │   ├── login.jsp
        │   ├── register.jsp
        │   ├── profile.jsp
        │   └── userHome.jsp
        ├── health
        │   ├── healthRecordAdd.jsp
        │   ├── healthRecordList.jsp
        │   ├── sportRecord.jsp
        │   ├── sleepRecord.jsp
        │   └── chronicRecord.jsp
        ├── analysis
        │   ├── healthAnalysis.jsp
        │   ├── healthReport.jsp
        │   ├── prediction.jsp
        │   └── aiAdvice.jsp
        └── admin
            ├── adminLogin.jsp
            ├── adminHome.jsp
            ├── userManage.jsp
            └── statistics.jsp
```

## 三、目录职责说明

| 目录或文件 | 作用 |
|---|---|
| `index.jsp` | 系统首页，提供登录、注册、管理员入口和核心功能入口 |
| `static/css/style.css` | 全站统一样式，包括布局、表单、按钮、表格和模块卡片 |
| `static/js/main.js` | 基础前端交互，例如表单提交按钮状态 |
| `WEB-INF/web.xml` | Tomcat 9.0 的 Web 项目配置文件，配置欢迎页和 Servlet 映射 |
| `WEB-INF/jsp/common` | 公共页面片段，供其他 JSP include 使用 |
| `WEB-INF/jsp/user` | 用户登录、注册、档案、用户首页 |
| `WEB-INF/jsp/health` | 健康数据录入、历史查询、运动、睡眠、慢性病监测 |
| `WEB-INF/jsp/analysis` | 健康分析、报告、预测、智能建议 |
| `WEB-INF/jsp/admin` | 管理员登录、首页、用户管理、平台统计 |
| `WEB-INF/lib` | 后续存放数据库驱动等 jar 包，例如 MySQL Connector |

## 四、Tomcat 9.0 最小响应链路

当前使用 `buxingchen.FrontControllerServlet` 作为基础服务器响应入口。

基本链路如下：

```text
浏览器请求 URL
  ↓
Tomcat 9.0 读取 WEB-INF/web.xml
  ↓
根据 url-pattern 找到 FrontControllerServlet
  ↓
FrontControllerServlet 根据请求路径选择 JSP
  ↓
request.getRequestDispatcher(...).forward(...)
  ↓
WEB-INF/jsp 下的 JSP 页面渲染给浏览器
```

示例：

```text
/login
  ↓
buxingchen.FrontControllerServlet
  ↓
/WEB-INF/jsp/user/login.jsp
```

```text
/record/list
  ↓
buxingchen.FrontControllerServlet
  ↓
/WEB-INF/jsp/health/healthRecordList.jsp
```

## 五、当前已配置的访问路径

| 访问路径 | 转发页面 | 功能归属 |
|---|---|---|
| `/home` | `user/userHome.jsp` | 用户首页 |
| `/login` | `user/login.jsp` | 用户登录 |
| `/register` | `user/register.jsp` | 用户注册 |
| `/profile` | `user/profile.jsp` | 健康档案 |
| `/record/add` | `health/healthRecordAdd.jsp` | 个人数据录入 |
| `/record/list` | `health/healthRecordList.jsp` | 健康数据历史查询 |
| `/sport` | `health/sportRecord.jsp` | 运动记录 |
| `/sleep` | `health/sleepRecord.jsp` | 睡眠记录 |
| `/chronic` | `health/chronicRecord.jsp` | 慢性病辅助监测 |
| `/analysis` | `analysis/healthAnalysis.jsp` | 健康数据分析 |
| `/report` | `analysis/healthReport.jsp` | 健康报告 |
| `/prediction` | `analysis/prediction.jsp` | 多维度健康预测 |
| `/ai` | `analysis/aiAdvice.jsp` | 智能辅助建议 |
| `/admin/login` | `admin/adminLogin.jsp` | 管理员登录 |
| `/admin/home` | `admin/adminHome.jsp` | 管理员首页 |
| `/admin/users` | `admin/userManage.jsp` | 用户管理 |
| `/admin/statistics` | `admin/statistics.jsp` | 管理员统计 |

## 六、与三人 src 包分工的对应关系

| 包名 | 负责模块 | 当前对应页面 |
|---|---|---|
| `chenqingyuan` | 健康档案管理、个人数据录入、多用户管理、健康数据分析 | `profile.jsp`、`healthRecordAdd.jsp`、`healthAnalysis.jsp`、`login.jsp`、`register.jsp` |
| `buxingchen` | 前后端接口管理、健康数据历史查询、管理员统计 | `FrontControllerServlet.java`、`healthRecordList.jsp`、`adminLogin.jsp`、`userManage.jsp`、`statistics.jsp` |
| `tanghaoli` | 智能辅助分析与建议、多维度健康数据预测、数据库管理 | `aiAdvice.jsp`、`prediction.jsp`、`healthReport.jsp` |

## 七、后续开发规则

### 1. JSP 页面规则

- 首页可以直接访问 `index.jsp`；
- 业务 JSP 统一放在 `WEB-INF/jsp` 下；
- `WEB-INF/jsp` 下的页面通过 Servlet 转发访问；
- JSP 主要负责显示页面和提交表单，不直接写复杂业务逻辑；
- 公共头部、菜单和底部使用 `common` 下的 JSP 片段复用。

### 2. Servlet 规则

- 当前 `FrontControllerServlet` 用于打通基础访问路径；
- 后续功能稳定后，可以逐步拆分为：
  - `UserServlet`
  - `HealthInputServlet`
  - `HistoryQueryServlet`
  - `AdminServlet`
  - `PredictionServlet`
  - `AiAdviceServlet`
- 表单请求先进入 Servlet，再调用 Service。

### 3. Service 和 Dao 规则

建议后续按照以下流程开发：

```text
JSP
  ↓
Servlet
  ↓
Service
  ↓
Dao
  ↓
数据库
```

例如健康数据录入：

```text
healthRecordAdd.jsp
  ↓
HealthInputServlet
  ↓
HealthAnalysisService
  ↓
UserDao 或 HealthRecordDao
  ↓
health_record 表
```

### 4. Tomcat 9.0 注意事项

- Tomcat 9.0 使用 `javax.servlet.*` 包；
- 不要使用 Tomcat 10 的 `jakarta.servlet.*` 包；
- 当前 `FrontControllerServlet.java` 已使用 `javax.servlet.*`；
- `.classpath` 中已经绑定 Tomcat 9.0 运行时，Eclipse 中部署到 Tomcat 9.0 即可。

## 八、当前阶段验收说明

当前阶段已经具备基础可验收结构：

- `WebContent` 文件夹结构完整；
- `WEB-INF/web.xml` 已配置欢迎页和 Servlet 映射；
- `WEB-INF/jsp` 已按 user、health、analysis、admin、common 分类；
- `static` 已有统一 CSS 和 JS；
- `src/buxingchen/FrontControllerServlet.java` 已建立最小服务器响应结构；
- 页面内容已覆盖健康档案、数据录入、历史查询、健康分析、智能建议、预测和管理员统计。

后续只需要继续完善 `src` 中三个包的实体类、Servlet、Service、Dao，并接入数据库，即可形成完整 Java Web 课程设计项目。
