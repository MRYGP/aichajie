# 三湘问道智能体工作流 - 下一步行动指南

**当前状态**: 系统架构已搭建，核心文档已创建  
**下一步**: 完成剩余文件创建，开始Week 1测试

---

## ✅ 已完成

1. **目录结构创建** ✓
   - templates/, prompts/, scripts/, taxonomy/
   - signals/, cases/, projects/, articles/, scripts_video/
   - docs/

2. **核心文档创建** ✓
   - README_AGENT.md (主文档)
   - sanxiang-wendao-integration-plan.md (v2.0方案)
   - 智能体工作流完整设计.md (系统设计)
   - CURSOR完整指令.md (执行指令)

3. **知识库已就绪** ✓
   - 01-knowledge-base/ (11个文档)
   - 00-system/ (Claude Project指令)

---

## 📋 待完成任务清单

### P0 任务（核心，必须完成）

#### 1. 创建 taxonomy/ 分类文件 (5个)
```bash
# 从 sanxiang-wendao-integration-plan.md 提取内容

taxonomy/
├── failure_modes.yml      # 第240-512行（14个失败模式）
├── sectors.yml            # 需要创建
├── moat_types.yml         # 需要创建
├── evidence_levels.yml    # 第116-131行
└── scoring_rubric.yml     # 第1071-1176行
```

**操作**: 用CURSOR批量提取这5个YAML文件

#### 2. 创建 templates/ 模板文件 (5个)
```bash
templates/
├── intake_card.md          # 智能体工作流完整设计.md 第XXX行
├── app_case_file.md        # sanxiang-wendao-integration-plan.md 第556-652行
├── project_eval_report.md  # sanxiang-wendao-integration-plan.md 第654-748行
├── article_template.md     # 需要基于设计创建
└── video_script_template.md # 需要基于设计创建
```

**操作**: 用CURSOR提取并格式化

#### 3. 创建 prompts/ Prompt模板 (4个)
```bash
prompts/
├── agent1_collector.md     # 智能体1的完整Prompt
├── agent2_analyzer.md      # 智能体2的完整Prompt
├── agent3a_article.md      # 智能体3A的完整Prompt
└── agent3b_video.md        # 智能体3B的完整Prompt
```

**操作**: 从"智能体工作流完整设计.md"提取

#### 4. 创建 scripts/ Python脚本 (4个)
```bash
scripts/
├── agent1_collector.py     # 信息收集脚本
├── agent2_analyzer.py      # 深度分析脚本
├── agent3_rewriter.py      # 内容改写脚本
└── batch_process.py        # 批量处理脚本
```

**操作**: 基于设计创建Python脚本框架

---

### P1 任务（重要，建议完成）

#### 5. 创建配置文件
```bash
.env.example            # API密钥示例
requirements.txt        # Python依赖
.gitignore             # Git忽略规则
```

#### 6. 创建项目文档
```bash
SETUP.md               # 安装配置指南
WORKFLOW.md            # 工作流手册
LICENSE                # MIT许可证
```

#### 7. 创建 docs/ 文档
```bash
docs/
├── workflow-guide.md      # 完整工作流指南
├── tools-setup.md         # 工具配置指南
└── best-practices.md      # 最佳实践
```

#### 8. 创建 README 文件
```bash
signals/README.md
cases/README.md
projects/README.md
articles/README.md
scripts_video/README.md
```

---

## 🚀 快速完成方案

### 方案A: 使用 CURSOR 批量生成

**推荐**: 最快，2-3小时完成

```
1. 打开CURSOR
2. 输入指令：

   请按照以下3份文档：
   - sanxiang-wendao-integration-plan.md
   - 智能体工作流完整设计.md
   - CURSOR完整指令.md
   
   批量创建以下文件：
   1. taxonomy/ (5个YAML文件)
   2. templates/ (5个模板)
   3. prompts/ (4个Prompt)
   4. scripts/ (4个Python脚本)
   5. 配置文件 (.env.example, requirements.txt)
   
   每个文件的内容已在设计文档中，请提取并格式化。

3. CURSOR会自动创建所有文件
4. 人工检查一遍，确保格式正确
```

### 方案B: 手工逐个创建

**适合**: 想深入理解每个文件

```
Day 1-2: 创建 taxonomy/ (5个YAML)
- 从 sanxiang-wendao-integration-plan.md 复制粘贴
- 验证YAML格式: python -c "import yaml; yaml.safe_load(open('taxonomy/failure_modes.yml'))"

Day 3-4: 创建 templates/ (5个模板)
- 从设计文档复制
- 调整格式

Day 5-6: 创建 prompts/ (4个Prompt)
- 从智能体工作流设计中提取
- 补充细节

Day 7-8: 创建 scripts/ (4个Python脚本)
- 编写基础框架
- 集成API调用
```

---

## 📊 完成度检查清单

### 当前完成度: 30%

- [x] 目录结构创建
- [x] README_AGENT.md
- [x] 知识库就绪
- [ ] taxonomy/ (5个YAML)
- [ ] templates/ (5个模板)
- [ ] prompts/ (4个Prompt)
- [ ] scripts/ (4个Python脚本)
- [ ] 配置文件
- [ ] 项目文档
- [ ] docs/ 文档

### 目标完成度: 100%

**预计完成时间**:
- 使用CURSOR: 2-3小时
- 手工创建: 1周

---

## 🎯 Week 1 测试计划

### 完成所有文件后，立即开始Week 1测试

**Day 1-7: 完整流程测试（以Perplexity为例）**

```bash
# Day 1: 测试智能体1
python scripts/agent1_collector.py collect "Perplexity"
# 检查 signals/watchlist.md 是否生成

# Day 2-3: 测试智能体2
python scripts/agent2_analyzer.py analyze "Perplexity"
# 检查 cases/2026/perplexity.md 是否生成

# Day 4: 测试智能体3A
python scripts/agent3_rewriter.py article "Perplexity"
# 检查 articles/2026/perplexity.md 是否生成

# Day 5: 测试智能体3B
python scripts/agent3_rewriter.py video "Perplexity"
# 检查 scripts_video/2026/perplexity-60s.md 是否生成

# Day 6: 人工编辑和发布
# 1. 编辑公众号文章
# 2. 录制短视频
# 3. 发布到公众号+抖音+小红书

# Day 7: 复盘
# 1. 质量检查（是否符合标准）
# 2. 流程优化（哪里可以改进）
# 3. 时间记录（实际用了多久）
```

---

## 💡 建议

### 1. 优先级：P0任务 > P1任务
- 先完成P0任务（8个核心文件）
- 系统可以运行后，再补充P1任务

### 2. 使用CURSOR批量生成
- 节省80%时间
- 2-3小时完成vs1周

### 3. 边用边优化
- 不要追求完美
- 先跑通Week 1流程
- 发现问题再优化

### 4. 人工编辑不可省
- 智能体生成初稿
- 人工深度编辑是灵魂
- 前100个案例：深度>速度

---

## 📞 需要帮助？

如果遇到问题：

1. **查看设计文档**
   - sanxiang-wendao-integration-plan.md（v2.0方案）
   - 智能体工作流完整设计.md（系统设计）
   - CURSOR完整指令.md（执行指令）

2. **检查已创建的文件**
   - README_AGENT.md（主文档）
   - 目录结构已就绪

3. **Git提交记录**
   ```bash
   git log --oneline
   # 查看所有提交历史
   ```

---

## 🎉 系统亮点回顾

1. **一份研究，三份产出**
   - 案例库 (cases/) → 反哺评估
   - 公众号文章 → 建立品牌
   - 短视频 → 传播影响力

2. **质量把关机制**
   - 智能体生成初稿 (50-80%)
   - 人工深度编辑 (20-50%)

3. **证据账本系统**
   - 每条断言都有来源
   - 避免数据造假

4. **失败模式预警**
   - 14个FM分类
   - 自动预警风险

5. **50%+效率提升**
   - 纯人工: 12-15小时
   - 智能体辅助: 6小时

---

**下一步**: 用CURSOR批量创建P0任务的8个核心文件，然后开始Week 1测试！

**目标**: 12个月研究1000个AI产品，成为AI创业评估专家！

---

**更新日期**: 2026-01-08  
**系统版本**: v1.0  
**完成度**: 30% → 100%（还需2-3小时）
