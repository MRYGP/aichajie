# 三湘问道 版本变更日志

## v3.1 → v3.2（2026-02-13）

### 文档仓库定位（修订后路径）

| 文档 | 原位置 | 修订后位置 |
|------|--------|------------|
| 系统指令 v3.2 | v3.2-upgrade-plan.md | `00-system/claude-project-instructions-v3.2.md` |
| 变更日志 | - | `00-system/upgrade-changelog.md`（本文件） |
| 历史模式库 | historical-patterns.md | `01-knowledge-base/patterns/historical-patterns.md` |
| 案例库路线图 | case-library-expansion-plan.md | `04-case-library/case-expansion-roadmap.md` |
| 快速入门 | executive-summary.md | `docs/quick-start.md` |
| 防偏差指南 | - | `docs/anti-bias-guidelines.md`（新增） |
| 证据与防误用 | - | `01-knowledge-base/frameworks/evidence-based-evaluation.md`（新增） |

### 核心变更摘要

1. **反共识维度增强**
   - 增加「可证伪设计」刹车A：D30/D60验证预测 + Kill阈值
   - 增加「楔子检查」刹车B：切入点、小样本闭环、无需大规模教育
   - 反共识类型判定表（结构性/身份/表面）+ 评分权重调整（+3/+1/0/-1）

2. **巨头盲区分析增强**
   - 新增「巨头下场触发条件」：ARR阈值、用户规模阈值、合规路径触发
   - 窗口剩余时间预测表 + 窗口关闭后应对策略

3. **时机窗口增强**
   - 新增「要素4：窗口半衰期」：短/中/长分类、路径匹配、半衰期错配警告

4. **防误用与边界**
   - 文档开头增加「框架适用边界与防误用声明」
   - 明确框架输出/不输出、使用原则、典型误用与正确用法

5. **历史模式库（historical-patterns.md）**
   - P01：关键特征增加可证伪、楔子、禁止项；检查清单增加第3.5、3.6步；失败边界增加第5、6条
   - P03：增加窗口半衰期特征与分类表；检查清单增加第4.5步
   - 模式总览后增加「框架使用警告」三则（反共识≠高胜率、历史不重复、分数只用于排序）

6. **案例库模板与质量**
   - 原则1改为「失败案例>成功案例，且必须配对」
   - 成功案例模板：强制失败对照、可证伪设计、楔子分析、下场触发条件、半衰期、可迁移 vs 不可迁移
   - 失败案例模板：强制 D30预警信号、最小代价改法、预警命中率回测
   - 质量控制清单增加 v3.2 强制要求；Phase 1 改为先失败案例、再成功案例配对

7. **快速入门（quick-start.md）**
   - 置顶「防误用警告」三则
   - 新增「D30验收标准」：P0-1 反共识×可证伪×楔子、P0-2 案例库质量、P0-3 盲测校准
   - 关键数据表增加「D30验收通过率 目标≥80%」
   - 新增「正确 vs 错误的使用姿势」

8. **新增文档**
   - `docs/anti-bias-guidelines.md`：防偏差使用指南（五类陷阱与防护、检查清单、证据等级分布、黄金三原则、盲测校准）
   - `01-knowledge-base/frameworks/evidence-based-evaluation.md`：证据系统与防误用机制（见该文件）

### 修订质量检查（Part 3）对照

- [x] historical-patterns.md：可证伪+楔子、窗口半衰期、框架使用警告、⭐标注
- [x] claude-project-instructions-v3.2.md：Step 2.1.6 刹车A+B、Step 2.6 下场触发条件、时机窗口半衰期、防误用声明
- [x] case-expansion-roadmap.md：成功模板失败对照、失败模板 D30预警、可迁移/不可迁移、质量控制更新
- [x] quick-start.md：防误用警告置顶、D30验收标准、正确/错误使用姿势
- [x] anti-bias-guidelines.md：创建完成、五陷阱+防护、检查清单、盲测校准

---

**维护者**：三湘问道团队  
**最后更新**：2026-02-13
