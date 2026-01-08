# 三湘问道 - AI产品研究智能体工作流

> **一份研究，三份产出** - 高效的AI产品研究与内容生产系统

**版本**: v1.0  
**日期**: 2026-01-08

---

## 🎯 项目简介

三智能体协作系统，实现"研究AI产品→积累案例→多渠道输出"的完整闭环：

```
输入AI产品名 → 30分钟信息收集 → 2小时深度分析 
→ 1小时生成文章 → 30分钟生成脚本 → 多渠道发布
```

**核心价值**:
- 📚 **积累判断力**: 研究1000个AI产品，训练"一眼看穿项目本质"的能力
- 🗄️ **建立案例库**: 形成AI创业领域最大的案例库（内部资产）
- 📝 **建立品牌**: 每周1篇深度文章 + 1个短视频（外部传播）
- 💰 **商业闭环**: 评估服务 + AI大赛 + 咨询培训

---

## 🏗️ 系统架构

### 三智能体分工

```
┌─────────────────────────────────────────┐
│  智能体1: 信息收集器 (Info Collector)   │
│  输入: AI产品名称                        │
│  输出: intake_card.md (30分钟)          │
│  工具: Perplexity API + Web Scraper    │
└─────────────┬───────────────────────────┘
              ↓ 人工审核 (20%精力)
┌─────────────────────────────────────────┐
│  智能体2: 深度分析师 (Deep Analyzer)     │
│  输入: intake_card.md                   │
│  输出: app_case_file.md (2小时)         │
│  工具: Claude + Project Knowledge       │
└─────────────┬───────────────────────────┘
              ↓ 人工编辑 (50%精力)
┌─────────────────────────────────────────┐
│  智能体3: 内容改写师 (Content Rewriter) │
│  输入: app_case_file.md                 │
│  输出1: 公众号文章 (1小时)               │
│  输出2: 短视频脚本 (30分钟)              │
│  工具: Claude + Prompt Templates        │
└─────────────┬───────────────────────────┘
              ↓ 发布
      公众号 + 抖音 + 小红书
```

### 一份研究，三份产出

```
深度研究 (4小时)
    ↓
├→ 输出1: 案例库 (cases/) → 反哺评估系统
├→ 输出2: 公众号文章 → 建立品牌
└→ 输出3: 短视频脚本 → 传播影响力
```

---

## 🚀 快速开始

### 5分钟启动

```bash
# 1. 克隆仓库
git clone https://github.com/MRYGP/aichajie.git
cd aichajie

# 2. 安装依赖
pip install -r requirements.txt

# 3. 配置API密钥
cp .env.example .env
# 编辑.env，填入Claude API Key等

# 4. 测试智能体1
python scripts/agent1_collector.py collect "Perplexity"

# 5. 查看生成的登记卡
cat signals/watchlist.md
```

### 完整工作流

**Week 1: 完整流程测试**
```bash
# Day 1: 智能体1收集信息
python scripts/agent1_collector.py collect "Perplexity"

# Day 2-3: 智能体2深度分析
python scripts/agent2_analyzer.py analyze "Perplexity"

# Day 4: 智能体3生成文章
python scripts/agent3_rewriter.py article "Perplexity"

# Day 5: 智能体3生成脚本
python scripts/agent3_rewriter.py video "Perplexity"

# Day 6: 发布
# 手动发布到公众号 + 抖音 + 小红书

# Day 7: 复盘
# 检查质量，优化流程
```

---

## 📁 目录结构

```
aichajie/
├── README_AGENT.md                    # 本文件
├── SETUP.md                           # 安装配置指南
├── WORKFLOW.md                        # 工作流使用手册
│
├── templates/                         # 模板文件
│   ├── intake_card.md                # 智能体1输出模板
│   ├── app_case_file.md              # 智能体2输出模板
│   ├── project_eval_report.md        # 项目评估报告模板
│   ├── article_template.md           # 公众号文章模板
│   └── video_script_template.md      # 短视频脚本模板
│
├── prompts/                           # Prompt模板
│   ├── agent1_collector.md           # 智能体1 Prompt
│   ├── agent2_analyzer.md            # 智能体2 Prompt
│   ├── agent3a_article.md            # 智能体3A Prompt
│   └── agent3b_video.md              # 智能体3B Prompt
│
├── scripts/                           # 自动化脚本
│   ├── agent1_collector.py           # 智能体1脚本
│   ├── agent2_analyzer.py            # 智能体2脚本
│   ├── agent3_rewriter.py            # 智能体3脚本
│   └── batch_process.py              # 批量处理脚本
│
├── taxonomy/                          # 分类系统
│   ├── sectors.yml                   # 赛道分类
│   ├── failure_modes.yml             # 失败模式(扁平结构)
│   ├── moat_types.yml                # 护城河类型
│   ├── evidence_levels.yml           # 证据分级
│   └── scoring_rubric.yml            # 评分细则
│
├── signals/                           # 线索池
│   └── watchlist.md                  # 待研究清单
│
├── cases/                             # 案例库(核心资产)
│   ├── 2025/
│   └── 2026/
│
├── projects/                          # 项目评估档案
│   └── 2026/
│
├── articles/                          # 公众号文章
│   └── 2026/
│
├── scripts_video/                     # 视频脚本
│   └── 2026/
│
├── knowledge-base/                    # 理论知识库
│   ├── theory/                       # DOC-S001~S048
│   ├── cases/                        # 商业计划书等
│   └── methods/                      # 方法论文档
│
└── docs/                              # 文档
    ├── workflow-guide.md             # 完整工作流指南
    ├── tools-setup.md                # 工具配置指南
    └── best-practices.md             # 最佳实践
```

---

## 📚 文档导航

### 快速开始
- [安装配置](SETUP.md) - 环境准备、API配置、依赖安装
- [工作流手册](WORKFLOW.md) - 完整的使用指南
- [最佳实践](docs/best-practices.md) - 质量把关、效率技巧

### 系统设计
- [完整设计文档](智能体工作流完整设计.md) - 28,000字系统设计
- [整合方案](sanxiang-wendao-integration-plan.md) - v2.0方案

### 智能体详解
- [智能体1：信息收集器](prompts/agent1_collector.md)
- [智能体2：深度分析师](prompts/agent2_analyzer.md)
- [智能体3：内容改写师](prompts/agent3a_article.md)

### 模板文档
- [intake_card.md](templates/intake_card.md) - 信息登记卡
- [app_case_file.md](templates/app_case_file.md) - AI应用案例文件
- [article_template.md](templates/article_template.md) - 公众号文章模板
- [video_script_template.md](templates/video_script_template.md) - 短视频脚本

---

## 💡 核心特性

### 1. 质量把关机制
- **智能体生成初稿** (50-80%自动化)
- **人工深度编辑** (20-50%精力) ← 这是灵魂
- **质量 > 速度** (前100个案例深度研究)

### 2. 证据账本系统
- 每条断言都有来源
- 证据分级 (A/B/C)
- 可信度判定标准
- 避免数据造假

### 3. 失败模式预警
- 14个失败模式 (扁平结构)
- 每个案例标注FM标签
- 项目评估时自动预警

### 4. 多渠道输出
**一份研究，三份产出**:
- 案例库 (cases/) → 反哺评估系统
- 公众号文章 → 建立品牌
- 短视频 → 传播影响力

### 5. 自动化流程
```python
# 批量处理20个AI产品
python scripts/batch_process.py --input products.txt --stage all

# 自动生成周报
python scripts/generate_weekly.py --week 2026-01-W1
```

---

## 📊 效率对比

| 维度 | 纯人工 | 智能体辅助 | 提升 |
|------|--------|-----------|------|
| 信息收集 | 1小时 | 30分钟 | 50% |
| 深度分析 | 4小时 | 2小时 | 50% |
| 文章改写 | 2小时 | 1小时 | 50% |
| 脚本制作 | 1小时 | 30分钟 | 50% |
| **总计** | **8小时** | **4小时** | **50%** |

**加上视频录制和发布**:
- 纯人工: 12-15小时
- 智能体辅助: **6小时**
- **节省时间: 50-60%**

---

## 🎯 第一年目标

### 产出目标
- ✅ 研究100个AI产品
- ✅ 积累100个高质量案例
- ✅ 发布100篇文章
- ✅ 制作100个短视频

### 能力目标
- ✅ 训练出"一眼看穿项目本质"的判断力
- ✅ 建立AI创业领域最大的案例库
- ✅ 成为AI创业评估专家

### 商业目标
- ✅ 个人品牌影响力
- ✅ 评估服务收入 (¥3-5万)
- ✅ AI大赛收入 (¥50万)
- ✅ 咨询/培训收入 (¥10-20万)
- **总收入预估: ¥60-80万**

---

## ⚠️ 关键提醒

### 1. 质量 > 数量 (前100个)
**不要追求"每天1个"**:
- 前100个: 每周1-2个 (深度研究)
- 这是"训练判断力"的关键期
- 深度思考 > 批量生产

### 2. 人工编辑不可省略
- 智能体生成初稿 (50-80%)
- 人工深度编辑 (20-50%) ← **这是灵魂**
- 必须亲自使用产品
- 必须补充个人洞察

### 3. 失败案例更重要
**每3个成功案例，配1个失败案例**:
- 失败案例包含"预警信号"
- 对判断力训练价值更大
- 主动搜索"AI startup failed"

### 4. 先跑通1个完整流程
**Week 1: 先做1个完整案例** (Perplexity)
- Day 1: 收集信息
- Day 2-3: 深度研究
- Day 4-5: 改写文章和脚本
- Day 6: 发布
- Day 7: 复盘
- **跑通1个 > 规划100个**

---

## 🤝 贡献指南

### 如何贡献案例
1. Fork本仓库
2. 按照模板研究一个AI产品
3. 提交PR到 `cases/2026/`
4. Review通过后合并

### 质量标准
- ✅ 完整的证据账本
- ✅ 明确的成功/失败机制
- ✅ 清晰的对标分析
- ✅ 可复用的启发

---

## 📞 联系方式

- 创始人: 常松阳
- 项目定位: 三湘问道-AI创业生态
- GitHub: https://github.com/MRYGP/aichajie
- 更新日期: 2026-01-08

---

## 📄 许可证

本项目采用 MIT 许可证。详见 [LICENSE](LICENSE) 文件。

---

**v1.0 | 更新日期: 2026-01-08**

> "如果你想做CEO，那你就要去看一千部电影" - 通过研究1000个AI产品，训练出"一眼看穿项目本质"的能力
