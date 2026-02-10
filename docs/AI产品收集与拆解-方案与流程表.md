# AI 产品收集与拆解：方案与流程对照表

**更新日期**: 2026-02-10  
**说明**: 按本次文档归位后的路径整理。收集 AI 产品、做拆解与评估、做商业化决策时，以本表所列文档为方案与流程依据。

---

## 一、按阶段对照：用哪份文档、做什么

| 阶段 | 主方案/流程文档 | 补充或模板文档 | 用途说明 |
|------|-----------------|----------------|----------|
| **1. 产品收集** | `docs/ai-product-collection-commercialization-framework.md` | `04-case-library/case-index.md`、`04-case-library/yc-ai-products-20-verification-table.md` | **收集维度**：10 个必填维度（破坏式创新、技术壁垒、时机窗口、商业模式、工具 ROI、代理潜力、团队适配、启动资金、基础信息、元数据）。**来源**：YC / Product Hunt / TechCrunch。**录入**：Notion 或表格，可参考框架内「产品收集模板」表格结构。 |
| **2. 每周执行节奏** | `docs/sanxiang-wendao-workflow-quick-reference.md` | — | **节奏**：周一收集（3h）→ 周二～四深度评估（每天 2h）→ 周五决策（2h）。**8 维度速查**、**四路决策树**（复制/工具/代理/观察）、KPI 速查。执行时优先看此速查版。 |
| **3. 深度拆解（单产品）** | `docs/产品拆解通用框架-v3.0.md` | `templates/product-teardown-template-v3.0.md` | **拆解框架**：5 阶段 16 模块、v3.0 主动推理、CEO 思维对标、失败模式预警、证据等级。**输出**：按 `templates/product-teardown-template-v3.0.md` 填 10 章（项目概况→用户画像→产品机制→商业模式→增长与分发→护城河→成功/失败机制→证据账本→可迁移启发→对贷查查的启发）。 |
| **4. 评估（打分与决策）** | `docs/ai-product-collection-commercialization-framework.md`（四路决策 + 复制/工具/代理决策树） | `00-system/evaluation-framework.md`、`02-evaluation-reports/templates/quick-evaluation-template.md` 或 `deep-evaluation-template.md` | **商业化评估**：用「框架」里的 8 维度打分与四路决策树做复制/工具/代理/观察判断。**项目评估报告**：若写正式评估报告，用 7 步拆解法（`evaluation-framework.md`）和对应模板（快速/深度/对比）。 |
| **5. 系统与案例库设计** | `docs/sanxiang-wendao-integration-plan.md` | `taxonomy/failure_modes.yml`、`taxonomy/evidence_levels.yml`、`00-system/质量检查指南.md` | **整体方案**：评估系统 + 情报库、仓库结构、模板设计、证据账本与失败模式。**落地**：建 cases/、signals/、failure_modes 等时按整合方案执行；做文档质量检查时用 `00-system/质量检查指南.md`。 |
| **6. 快速入门与多维分析** | `docs/V3.0-QUICKSTART.md` | `docs/MULTI-DIMENSIONAL-ANALYSIS-QUICKSTART.md` | **v3.0 上手**：5 分钟了解 v3.0 用法。**多维分析**：需要多维分析流程时查 MULTI-DIMENSIONAL-ANALYSIS-QUICKSTART。 |

---

## 二、按「只做一件事」选文档

| 你要做的事 | 首选文档 | 备选/配合 |
|------------|----------|-----------|
| 定「收集时记哪些字段」 | `docs/ai-product-collection-commercialization-framework.md` | 框架内表格结构 + 10 维度说明 |
| 定「每周几做什么」 | `docs/sanxiang-wendao-workflow-quick-reference.md` | — |
| 做「单产品深度拆解」 | `docs/产品拆解通用框架-v3.0.md` + `templates/product-teardown-template-v3.0.md` | `01-knowledge-base/methods/商业案例拆解指令.md` |
| 做「复制/工具/代理」决策 | `docs/ai-product-collection-commercialization-framework.md` + `docs/sanxiang-wendao-workflow-quick-reference.md`（决策树） | — |
| 写「正式评估报告」 | `00-system/evaluation-framework.md` + `02-evaluation-reports/templates/` 下对应模板 | `00-system/claude-project-instructions-v3.0.md`（Claude 配置） |
| 建案例库、证据与失败模式 | `docs/sanxiang-wendao-integration-plan.md` | `taxonomy/failure_modes.yml`、`taxonomy/evidence_levels.yml` |
| 查产品池/案例索引 | `04-case-library/case-index.md` | `04-case-library/yc-ai-products-20-verification-table.md`、`YC-AI产品列表-18个.md` |

---

## 三、推荐动线（收集 → 拆解 → 决策）

1. **收集**：按 `docs/ai-product-collection-commercialization-framework.md` 的 10 个维度录入；节奏按 `docs/sanxiang-wendao-workflow-quick-reference.md`（周一 5–10 个）。
2. **拆解**：对要深挖的产品用 `docs/产品拆解通用框架-v3.0.md` 分析，用 `templates/product-teardown-template-v3.0.md` 产出拆解报告（含证据账本、失败模式、对贷查查启发）。
3. **评估与决策**：用速查里的 8 维度打分 + 四路决策树做复制/工具/代理/观察；需正式报告时用 `00-system/evaluation-framework.md` 与 `02-evaluation-reports/templates/`。
4. **归档与索引**：拆解/评估结果归入案例库或项目档案，并更新 `04-case-library/case-index.md`（或按 `docs/sanxiang-wendao-integration-plan.md` 的目录设计）。

---

**文档索引入口**：`00-system/文档索引.md` → 「六、文档与速查（docs/）」可跳到上述各 doc 的详细说明。
