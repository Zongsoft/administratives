## 工作边界

- C# 不使用 using 类型或命名空间别名；名称冲突处使用相对命名空间或完整限定类型名。
- 文本使用 CRLF，代码使用 Tab；保留用户现有修改，修改代码时保持区划编号、层级与返回格式。
- Address 数据读取、缓存及控制器的契约见 [SKILL.md](SKILL.md)；公开调用与数据准备见双语 README。
- 数据库脚本提供数据初始化资料，未经明确要求不连接真实数据库或执行导入。
- README 面向使用者；实现与测试约束写入 SKILL.md，只记录当前契约。

## 验证

- ASP.NET API 项目不编写单元测试；通过定向构建和具备环境后的 HTTP 集成验证检查。业务库单元测试不引用 API 程序集。
- 数据读取或缓存改动先构建 src/Zongsoft.Administratives.slnx，再运行 test/Zongsoft.Administratives.Tests.csproj，覆盖 net8.0、net9.0、net10.0。
- 本地 Framework 引用需先生成匹配目标框架的 Core 程序集，并设置 ZongsoftFrameworkPathReferenced=true；测试中的 Core HintPath 不自动构建这些依赖。
- 离线测试使用临时数据文件与替身访问器，不装配插件或使用真实服务；缓存测试恢复静态状态。不要扩大生产成员可见性来方便测试。
- 文档与格式检查使用 git diff --check，按 CRLF 规则识别行末；.cs 的 #region 后与 #endregion 前不留空行。
