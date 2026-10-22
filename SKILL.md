---
name: zongsoft-administratives
description: 修改行政区划库的异步读取、缓存、Web 路由或离线测试时使用，维护区划层级与两种返回格式。
---

# 行政区划读取契约

- Address 的数据库和文件读取使用 Async 方法；取消令牌位于末尾并传递到查询枚举与 JSON 流读写。区划编号拆分、内存层级转换及 GZip 压缩保持本地计算。
- 四级数据库读取按省、市、区县、街道顺序等待，并在构建层级之前完成枚举和释放。容器提供的数据访问器由其所有者释放。
- 完整区划首次加载使用可等待的互斥入口，进入后复查缓存，finally 释放；等待者取消不能释放他人持有的锁。失败允许后续调用重试。
- Plain 使用数组，Keyed 使用编号字典；保持 GetAsync 各重载的返回类型、FullName 拼接、无效编号与空结果约定。Web 控制器保持现有 Addresses/Administratives 路由和 HTTP 返回分支。
- 修改读取路径时运行 test/Zongsoft.Administratives.Tests.csproj 的离线测试；测试只使用独立临时文件和替身数据访问器。静态缓存与 ApplicationContext 的隔离测试顺序执行并恢复原值。
- 测试仅 ProjectReference 被测主库，Core 使用匹配目标框架的 HintPath。先构建相邻 framework 的 Core，再以 ZongsoftFrameworkPathReferenced=true 构建 Zongsoft.Administratives.slnx，最后运行测试；覆盖 net8.0、net9.0、net10.0。

- ASP.NET API 项目不编写单元测试；构建 API 项目，并在具备测试环境后验证 HTTP 路由与返回分支。
