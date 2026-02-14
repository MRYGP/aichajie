# v3.2 修订与根目录清理 - 检查报告

**检查日期**：2026-02-13  
**结论**：根目录 4 个原文件**已删除**，无需保留；权威版本仅保留在约定路径。

---

## 1. 详细检查结果

### 1.1 内容一致性

| 根目录原文件 | 权威位置 | 内容关系 |
|-------------|----------|----------|
| `historical-patterns.md` | `01-knowledge-base/patterns/historical-patterns.md` | 修订在根文件完成后再复制到目标，两处结构一致（含框架使用警告、P01 可证伪/楔子、P03 半衰期等），内容等价。 |
| `v3.2-upgrade-plan.md` | `00-system/claude-project-instructions-v3.2.md` | 同上，修订后整份复制，目标文件含防误用声明、刹车 A/B、下场触发条件、要素 4 半衰期。 |
| `case-library-expansion-plan.md` | `04-case-library/case-expansion-roadmap.md` | 同上，目标含原则 1 配对、成功/失败 v3.2 模板、质量控制与 Phase 1 优先级。 |
| `executive-summary.md` | `docs/quick-start.md` | 同上，目标含防误用警告、D30 验收标准、正确/错误姿势。 |

结论：**权威内容已完整落在新路径，根目录为冗余副本。**

### 1.2 仓库内引用

- **`00-system/claude-project-instructions-v3.2.md`**、**`04-case-library/case-expansion-roadmap.md`**：内部引用均为 `01-knowledge-base/patterns/historical-patterns.md`，无引用根目录。
- **`01-knowledge-base/frameworks/evidence-based-evaluation.md`**：仅引用 `01-knowledge-base/patterns/historical-patterns.md` 等新路径。
- **`docs/quick-start.md`**：原先多处写“见 historical-patterns.md / v3.2-upgrade-plan.md / case-library-expansion-plan.md”等**文件名**，未写路径；已全部改为**带路径的引用**（见下），删除根文件后读者仍能唯一定位文档。

已做修改示例：
- 文档 1/2/3 标题与描述改为带路径（如 `01-knowledge-base/patterns/historical-patterns.md`）。
- “系统化方案”“历史模式”的“见 xxx”改为上述路径。
- “今天可以做什么”里的阅读清单改为带路径。
- “文档统计”表改为“路径 + 核心内容”；“附录：文档清单”改为“文档清单与路径”，并列出本仓库全部 v3.2 文档路径。

结论：**无任何逻辑或链接依赖根目录 4 个文件，删除安全。**

### 1.3 目录与文件存在性

- `00-system/`：`claude-project-instructions-v3.2.md`、`upgrade-changelog.md` 存在。
- `01-knowledge-base/patterns/`：`historical-patterns.md` 存在。
- `01-knowledge-base/frameworks/`：`evidence-based-evaluation.md` 存在。
- `01-knowledge-base/company-cases/README.md`：已含 v3.2 案例模板说明。
- `04-case-library/`：`case-expansion-roadmap.md`、`case-templates/success-case-template.md`、`case-templates/failure-case-template.md` 存在。
- `docs/`：`quick-start.md`、`anti-bias-guidelines.md` 存在。

结论：**约定结构完整，无缺失。**

---

## 2. 根目录原文件是否保留？

### 建议：**不保留，已删除**

理由简要说明：

1. **单一事实来源**：Part 1 已规定“修订后放这里”，权威版本应在 `00-system`、`01-knowledge-base`、`04-case-library`、`docs`。根目录再保留会造成“两处都可改”的歧义。
2. **无依赖**：如上，所有引用已改为新路径或仅作名称提及且已补全路径，删除根文件不影响阅读或工具查找。
3. **减少误用**：新人或脚本若按“根目录也有”的习惯编辑根文件，会导致与权威版本分叉，难以维护。
4. **与 Part 1 一致**：Part 1 只列出了新路径，未要求保留根目录副本。

### 已执行操作

- 已删除根目录下 4 个文件：
  - `historical-patterns.md`
  - `v3.2-upgrade-plan.md`
  - `case-library-expansion-plan.md`
  - `executive-summary.md`
- 已更新 `docs/quick-start.md` 中所有相关引用为上述新路径，并更新附录为“文档清单与路径”。

若需保留“从别处拷贝来的原始未修订版”作归档，建议用 Git 在删除前打 tag（例如 `archive/root-v3.2-sources`），而不是保留在工作区根目录。

---

## 3. 当前 v3.2 文档入口一览

| 用途 | 路径 |
|------|------|
| 快速上手、防误用、D30 验收 | `docs/quick-start.md` |
| 防偏差与盲测 | `docs/anti-bias-guidelines.md` |
| 系统升级说明（含防误用声明） | `00-system/claude-project-instructions-v3.2.md` |
| v3.1→v3.2 变更记录 | `00-system/upgrade-changelog.md` |
| 历史模式（P01–P10、可证伪、半衰期） | `01-knowledge-base/patterns/historical-patterns.md` |
| 证据等级与防误用机制 | `01-knowledge-base/frameworks/evidence-based-evaluation.md` |
| 案例库扩充与模板 | `04-case-library/case-expansion-roadmap.md` |
| 成功/失败案例写作模板 | `04-case-library/case-templates/` |

---

**维护者**：三湘问道团队  
**报告生成**：2026-02-13
