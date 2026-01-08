# CURSOR 指令：生成三湘问道智能体工作流完整系统

**目标**: 根据完整的设计文档，生成可落地的智能体工作流系统

**输入文档**:
1. `sanxiang-wendao-integration-plan.md` (已修改的v2.0方案)
2. `智能体工作流完整设计.md` (3智能体系统设计)
3. 本次对话的所有内容

---

## 📋 任务总览

你需要创建以下完整的文件系统：

```
sanxiang-wendao/
├── README.md                          # 项目总览
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
│   ├── watchlist.md                  # 待研究清单
│   └── README.md                     # 使用说明
│
├── cases/                             # 案例库
│   ├── 2025/                         # 按年份组织
│   ├── 2026/
│   └── README.md
│
├── projects/                          # 项目评估档案
│   ├── 2026/
│   └── README.md
│
├── articles/                          # 公众号文章
│   ├── 2026/
│   └── README.md
│
├── scripts_video/                     # 视频脚本
│   ├── 2026/
│   └── README.md
│
├── knowledge-base/                    # 理论知识库
│   ├── theory/                       # 已有的DOC-S001~S048
│   ├── cases/                        # 商业计划书等
│   └── methods/
│
└── docs/                              # 文档
    ├── workflow-guide.md             # 完整工作流指南
    ├── tools-setup.md                # 工具配置指南
    └── best-practices.md             # 最佳实践
```

---

## 🎯 核心任务清单

### Task 1: 创建项目文档 (README等)

创建以下4个文档:

#### 1.1 README.md

内容应包含:
```markdown
# 三湘问道 - AI产品研究智能体工作流

## 项目简介
3智能体系统，实现"研究AI产品→积累案例→多渠道输出"的完整闭环

## 系统架构
[简要说明3个智能体的功能]

## 快速开始
[5分钟启动指南]

## 文档导航
- [安装配置](SETUP.md)
- [工作流手册](WORKFLOW.md)
- [最佳实践](docs/best-practices.md)

## 联系方式
...
```

#### 1.2 SETUP.md (安装配置指南)

内容应包含:
```markdown
# 安装配置指南

## 1. 环境准备
- Python 3.9+
- Git
- Claude API Key
- Perplexity API Key (可选)

## 2. 安装步骤
```bash
# 克隆仓库
git clone ...

# 安装依赖
pip install -r requirements.txt

# 配置API密钥
cp .env.example .env
# 编辑.env文件，填入API密钥
```

## 3. 工具配置
- Claude Projects配置
- Perplexity API配置
- Notion配置(可选)

## 4. 验证安装
[测试命令]
```

#### 1.3 WORKFLOW.md (工作流使用手册)

内容应包含:
```markdown
# 工作流使用手册

## 完整工作流程 (以Perplexity为例)

### Day 1: 信息收集 (30分钟)
[详细步骤]

### Day 2-3: 深度研究 (2小时)
[详细步骤]

### Day 4: 改写文章 (1小时)
[详细步骤]

### Day 5: 制作脚本 (30分钟)
[详细步骤]

### Day 6: 发布 (1小时)
[详细步骤]

### Day 7: 复盘
[详细步骤]

## 常见问题
...
```

#### 1.4 requirements.txt

```
anthropic>=0.18.0
python-dotenv>=1.0.0
pyyaml>=6.0
requests>=2.31.0
```

---

### Task 2: 创建模板文件 (templates/)

#### 2.1 intake_card.md

根据"智能体工作流完整设计.md"的 2.4节，创建完整的intake_card模板。

**关键要求**:
- 包含完整的YAML头
- 包含所有必填字段
- 包含信息来源表格
- 包含下一步行动清单

#### 2.2 app_case_file.md

根据"sanxiang-wendao-integration-plan.md"的 3.2节，创建完整的案例文件模板。

**关键要求**:
- 包含YAML头(name/website/sector/status/evidence_quality/tags等)
- 包含9个部分(一句话结论/用户与场景/.../证据账本/可迁移的启发)
- 证据账本表格必须包含"链接/出处"列
- 成功/失败机制部分必须有条件分支

#### 2.3 project_eval_report.md

根据"sanxiang-wendao-integration-plan.md"的 3.3节，创建项目评估报告模板。

**关键要求**:
- 包含YAML头
- 7步拆解法完整结构
- Step3必须有"对标缺口清单"部分
- 必须有"失败模式预警"部分
- 必须有"证据与待验证清单"

#### 2.4 article_template.md

创建公众号文章模板:
```markdown
# [标题模板]

**导读**: [一句话总结]

---

## 开场 (300字)
[场景引入 / 痛点描述]

## 第1部分: 它在替代谁? (500字)

## 第2部分: 为什么是这群用户? (800字)

## 第3部分: 护城河在哪里? (800字)

## 第4部分: 如果你要做类似的 (800字)

## 第5部分: 核心洞察 (300字)

---

**关于作者**: [简介]

**推荐阅读**: [相关文章链接]

---

[配图说明]
- 开场: [图片描述]
- 第1部分: [图片描述]
...
```

#### 2.5 video_script_template.md

创建短视频脚本模板:
```markdown
# [产品名] - [时长]秒脚本

## 分镜表

| 时间 | 画面 | 文案 | 配音提示 |
|------|------|------|---------|
| 0-5s | [画面描述] | [文案] | [语气] |
| ... | ... | ... | ... |

## 配音稿 (完整)
[逐字稿]

## 画面素材需求
- 需要录制: 
- 可以用PPT: 
- 需要找素材: 

## 制作要点
- 节奏: 
- 重点: 
- BGM建议: 
```

---

### Task 3: 创建Prompt模板 (prompts/)

#### 3.1 agent2_analyzer.md

根据"智能体工作流完整设计.md"的 3.4节，创建完整的智能体2 Prompt。

**关键内容**:
- 输入说明
- 7个维度的详细要求
- 输出格式要求
- 禁止事项清单

#### 3.2 agent3a_article.md

根据"智能体工作流完整设计.md"的 4.4节，创建公众号改写Prompt。

#### 3.3 agent3b_video.md

根据"智能体工作流完整设计.md"的 4.5节，创建短视频脚本Prompt。

---

### Task 4: 创建Python脚本 (scripts/)

#### 4.1 agent1_collector.py

根据"智能体工作流完整设计.md"的 2.5节，创建完整的Python脚本。

**关键功能**:
- InfoCollector类
- collect()方法
- batch_collect()方法
- 完整的错误处理
- 命令行参数支持

**使用示例**:
```bash
python scripts/agent1_collector.py collect "Perplexity"
python scripts/agent1_collector.py batch --file product_list.txt
```

#### 4.2 agent2_analyzer.py

根据"智能体工作流完整设计.md"的 3.6节，创建完整的Python脚本。

**关键功能**:
- DeepAnalyzer类
- analyze()方法
- 读取登记卡
- 调用Claude API
- 保存分析结果

#### 4.3 agent3_rewriter.py

根据"智能体工作流完整设计.md"的 4.6节，创建完整的Python脚本。

**关键功能**:
- ContentRewriter类
- rewrite_article()方法
- rewrite_video_script()方法
- batch_rewrite()方法

#### 4.4 batch_process.py

创建批量处理脚本:
```python
#!/usr/bin/env python3
"""
批量处理工作流
一键完成: 收集→分析→改写
"""

import argparse
from agent1_collector import InfoCollector
from agent2_analyzer import DeepAnalyzer
from agent3_rewriter import ContentRewriter

class BatchProcessor:
    def __init__(self):
        self.collector = InfoCollector(...)
        self.analyzer = DeepAnalyzer(...)
        self.rewriter = ContentRewriter(...)
    
    def process_one(self, product_name):
        """处理单个产品的完整流程"""
        # Step 1: 收集
        self.collector.collect(product_name)
        
        # Step 2: 等待人工审核
        print("请人工审核并补充信息，完成后按回车继续")
        input()
        
        # Step 3: 分析
        self.analyzer.analyze(product_name)
        
        # Step 4: 等待人工编辑
        print("请人工编辑分析，完成后按回车继续")
        input()
        
        # Step 5: 改写
        self.rewriter.rewrite_article(f"cases/2026/{product_name}.md")
        self.rewriter.rewrite_video_script(f"cases/2026/{product_name}.md")
        
        print(f"✅ {product_name} 处理完成！")

if __name__ == "__main__":
    processor = BatchProcessor()
    processor.process_one("Perplexity")
```

---

### Task 5: 创建分类系统 (taxonomy/)

#### 5.1 failure_modes.yml

**关键要求**:
- **必须是扁平结构** (不是嵌套)
- 每个失败模式是一个独立对象
- 包含所有字段: id/name/category/definition/severity/typical_signals/example_cases/related_modes/prevention/detection_period/kill_threshold

**参考**: "sanxiang-wendao-integration-plan.md"修改4中的完整YAML结构

创建包含14个失败模式的完整文件:
- FM001: 流量红利消失
- FM002: 分发渠道被切断
- FM003: 伪需求
- FM004: 工作流不闭环
- FM005: 单位经济不健康
- FM006: 推理成本过高
- FM007: API依赖风险
- FM008: 数据孤岛
- FM009: 正面硬刚巨头
- FM010: 护城河不足
- FM011: 执行力不足
- FM012: 创始人不适配
- FM013: 太早(时机不成熟)
- FM014: 太晚(窗口已关闭)

#### 5.2 evidence_levels.yml

创建证据分级标准:
```yaml
# 证据分级标准 v1.0

evidence_levels:
  A:
    name: 官方/审计/可验证
    sources:
      - SEC filing / 审计报告
      - 公司官方公告 (融资/财报)
      - 政府公开数据
      - 创始人在正式场合的确认
      - 合同/协议扫描件
    reliability: 高
    
  B:
    name: 媒体/分析报告
    sources:
      - 知名媒体报道 (TechCrunch, WSJ, 36Kr...)
      - 行业分析报告 (Gartner, CB Insights...)
      - 多个来源交叉验证的信息
      - 公司员工LinkedIn信息
    reliability: 中
    
  C:
    name: 社交媒体/推测
    sources:
      - 创始人Twitter/微博自述
      - 用户评论/社区讨论
      - 基于公开信息的推算
      - 未经证实的传闻
    reliability: 低

credibility_rules:
  高可信度:
    - 证据等级为A
    - 与其他信息一致
    - 时效性<3个月
  
  中可信度:
    - 证据等级为A但时效性3-12个月
    - 证据等级为B且与其他信息一致
    - 证据等级为A但存在矛盾
  
  低可信度:
    - 证据等级为B且存在矛盾
    - 证据等级为C(无论其他条件)
```

#### 5.3 scoring_rubric.yml

创建评分细则:
```yaml
# 评分细则 v1.0

philosophy:
  档位化: 避免伪精确
  档位:
    红灯区: 0-3分 (有严重问题)
    黄灯区: 4-6分 (有潜力但需验证)
    绿灯区: 7-8分 (优质项目)
    强绿灯区: 9-10分 (顶级项目)

dimensions:
  用户需求:
    weight: 0.2
    scale:
      10分: 刚需+高频+明确场景+愿意付费
      8-9分: 刚需但中频 或 高频但非刚需
      6-7分: 低频或场景模糊
      4-5分: 伪需求但有部分价值
      0-3分: 完全伪需求
    unknown_handling: 如果缺少用户验证数据，标注unknown
  
  产品价值:
    weight: 0.2
    scale:
      10分: 创造新品类+10倍体验+啊哈时刻
      8-9分: 显著提升(3-5倍)+用户愿意切换
      6-7分: 略有提升(1.5-2倍)+有差异化
      4-5分: 做得更好但差异不明显
      0-3分: 无明显价值
    unknown_handling: 如果未体验产品，标注unknown
  
  技术壁垒:
    weight: 0.2
    scale:
      10分: 技术壁垒高+数据飞轮+大厂3年难复制
      8-9分: 有技术壁垒+有数据积累+大厂1年能复制
      6-7分: 技术壁垒中等+大厂半年能复制
      4-5分: 技术壁垒低+大厂3个月能复制
      0-3分: 无技术壁垒+任何人都能复制
    unknown_handling: 如果技术栈不明，标注unknown
  
  商业模式:
    weight: 0.2
    scale:
      10分: LTV/CAC>5 + 边际成本趋近0 + 可规模化
      8-9分: LTV/CAC>3 + 边际成本低
      6-7分: LTV/CAC>2 + 商业模式清晰
      4-5分: LTV/CAC在1-2之间
      0-3分: LTV/CAC<1
    unknown_handling: 如果无财务数据，标注unknown
  
  团队执行:
    weight: 0.2
    scale:
      10分: 创始人完美适配+团队完整+执行快+有成功经验
      8-9分: 创始人适配+团队基本完整+执行正常
      6-7分: 创始人一般+团队有缺口+执行偏慢
      4-5分: 创始人不适配 或 团队不完整 或 执行慢
      0-3分: 多个维度都有严重问题
    unknown_handling: 如果团队信息不明，标注unknown
```

#### 5.4 sectors.yml

创建赛道分类:
```yaml
# AI应用赛道分类 v1.0

sectors:
  - id: ai-search
    name: AI搜索
    description: Answer Engine, 知识问答
    examples: [Perplexity, You.com]
  
  - id: ai-coding
    name: AI编程
    description: 代码生成、代码补全、代码审查
    examples: [Cursor, GitHub Copilot, Codeium]
  
  - id: ai-content
    name: AI内容生成
    description: 文字、图片、视频生成
    examples: [ChatGPT, Midjourney, Runway]
    
  - id: ai-assistant
    name: AI助手
    description: 个人助手、企业助手
    examples: [Notion AI, Claude]
  
  - id: ai-vertical
    name: 垂直AI应用
    description: 法律、医疗、金融等垂直领域
    examples: [Harvey, Hippocratic AI]
  
  # ... 更多赛道
```

#### 5.5 moat_types.yml

创建护城河类型:
```yaml
# 护城河类型分类 v1.0

moat_types:
  - id: data-flywheel
    name: 数据飞轮
    description: 用户越多，数据越多，产品越好
    strength: 高
    examples: [Google搜索, 推荐算法]
  
  - id: network-effect
    name: 网络效应
    description: 用户越多，产品价值越高
    strength: 高
    examples: [微信, LinkedIn]
  
  - id: switching-cost
    name: 切换成本
    description: 用户迁移到竞品的成本高
    strength: 中-高
    examples: [企业软件, 数据库]
  
  - id: brand
    name: 品牌
    description: 用户信任和认知
    strength: 中
    examples: [Nike, Apple]
  
  - id: tech-barrier
    name: 技术壁垒
    description: 技术难以复制
    strength: 中
    duration: 通常1-3年
  
  - id: regulatory
    name: 合规/牌照
    description: 需要政府许可
    strength: 高
    examples: [金融, 医疗]
  
  - id: supply-chain
    name: 供应链
    description: 独特的供应链优势
    strength: 中-高
    examples: [小米, Shein]
```

---

### Task 6: 创建README文件

为每个主要目录创建README.md说明文件:

#### 6.1 signals/README.md
```markdown
# 线索池 (Signals)

## 目录说明
这个目录用于存放"待研究"的AI产品线索。

## 文件说明
- `watchlist.md`: 待研究清单 (所有登记卡都在这里)
- 按优先级分类: P0(必须研究) / P1(有价值) / P2(观察)

## 使用流程
1. 发现新产品 → 智能体1生成登记卡 → 追加到watchlist.md
2. 人工审核 → 标注优先级
3. P0产品 → 立即安排深度研究 → 晋级到cases/
4. P1产品 → 排入研究队列
5. P2产品 → 持续观察，设置提醒

## 晋级标准
- 有B级以上证据
- 值得深度研究 (市场机会>7分 或 有独特机制)
- 可以成为有价值的对标案例
```

#### 6.2 cases/README.md
```markdown
# 案例库 (Cases)

## 目录说明
存放完整的AI应用深度分析案例。

## 文件组织
- 按年份组织: 2025/ 2026/ ...
- 文件命名: 产品名小写.md (如: perplexity.md)

## 案例标准
每个案例必须包含:
- 完整的YAML头
- 7个维度深度分析
- 证据账本 (每条断言有来源)
- 成功/失败机制分析

## 使用场景
1. 项目评估时的对标分析 (Step3引用)
2. 失败模式预警 (Step8引用)
3. 公众号文章素材
4. 培训/咨询案例库

## 维护要求
- 每个案例必须经过人工深度编辑
- 证据账本必须可复查 (有链接/出处)
- 定期更新 (重要案例每6个月复查一次)
```

#### 6.3 projects/README.md
```markdown
# 项目评估档案 (Projects)

## 目录说明
存放创业项目的评估报告。

## 文件组织
- 按年份组织
- 文件命名: 项目名.md

## 与cases/的区别
- cases/: AI应用研究 (已上线的产品)
- projects/: 创业项目评估 (想做的项目)

## 用途
1. 存档评估报告
2. 追踪项目进展 (6个月后复查)
3. 验证评估准确性 (预测vs实际)
```

---

### Task 7: 创建工作流指南 (docs/)

#### 7.1 docs/workflow-guide.md

创建完整的工作流指南:
```markdown
# 完整工作流指南

## 目录
1. [Week 1: 第一个完整案例](#week-1)
2. [日常工作流程](#daily-workflow)
3. [质量检查清单](#quality-checklist)
4. [常见问题](#faq)

## Week 1: 第一个完整案例

### 前置准备 (1小时)
[详细步骤]

### Day 1: 信息收集
[详细操作步骤，包括命令行命令]

### Day 2-3: 深度研究
[详细操作步骤，包括人工编辑要点]

### Day 4-7: 改写与发布
[详细操作步骤]

## 日常工作流程

### 每周任务清单
- [ ] 周一: 选定2个产品，运行智能体1
- [ ] 周二: 深度研究产品1
- [ ] 周三: 深度研究产品2
- [ ] 周四: 改写文章
- [ ] 周五: 制作视频
- [ ] 周六: 发布
- [ ] 周日: 复盘

## 质量检查清单

### 登记卡检查
- [ ] 融资信息有来源链接
- [ ] 创始人背景准确
- [ ] 没有瞎编数据
- [ ] 优先级标注合理

### 深度分析检查
- [ ] 实际使用了产品 (至少30分钟)
- [ ] 补充了个人洞察
- [ ] 对标分析完整 (2+成功, 2+失败)
- [ ] 证据账本可复查
- [ ] 标注了失败模式预警

### 文章检查
- [ ] 开场吸引人
- [ ] 通俗易懂 (初中生能看懂)
- [ ] 有具体案例和类比
- [ ] 金句可独立引用
- [ ] 有行动号召

## 常见问题
...
```

#### 7.2 docs/tools-setup.md

创建工具配置详细指南:
```markdown
# 工具配置详细指南

## 1. Claude API配置

### 获取API Key
[步骤]

### 配置环境变量
```bash
export ANTHROPIC_API_KEY="sk-ant-..."
```

### 配置Claude Projects
[详细步骤]

## 2. Perplexity API配置
[详细步骤]

## 3. 其他工具
...
```

#### 7.3 docs/best-practices.md

创建最佳实践指南:
```markdown
# 最佳实践

## 信息收集最佳实践
1. 多源验证 (至少3个来源)
2. 优先使用A级证据
3. 标注"unknown"优于瞎编

## 深度分析最佳实践
1. 必须亲自使用产品
2. 关注失败案例 (比成功案例更重要)
3. 边缘用户分析要具体

## 内容改写最佳实践
1. 开场用故事引入
2. 多用类比和例子
3. 金句要可独立引用

## 时间管理最佳实践
1. 质量>数量 (前100个)
2. 批量操作 (集中时间)
3. 定期复盘
```

---

### Task 8: 创建.env.example

```bash
# API Keys
ANTHROPIC_API_KEY=sk-ant-xxx
PERPLEXITY_API_KEY=pplx-xxx

# Optional
CRUNCHBASE_API_KEY=
NOTION_API_KEY=

# Paths
TEMPLATES_DIR=./templates
CASES_DIR=./cases
PROJECTS_DIR=./projects
```

---

## ✅ 执行指令

### 指令1: 创建完整目录结构

```bash
# CURSOR，请执行以下操作：

# 1. 创建所有目录
mkdir -p templates prompts scripts taxonomy signals cases/{2025,2026} projects/{2026} articles/{2026} scripts_video/{2026} knowledge-base/{theory,cases,methods} docs

# 2. 创建空的README文件
touch signals/README.md cases/README.md projects/README.md articles/README.md scripts_video/README.md

# 3. 创建空的分类文件
touch taxonomy/sectors.yml taxonomy/failure_modes.yml taxonomy/moat_types.yml taxonomy/evidence_levels.yml taxonomy/scoring_rubric.yml

# 4. 创建空的模板文件
touch templates/intake_card.md templates/app_case_file.md templates/project_eval_report.md templates/article_template.md templates/video_script_template.md

# 5. 创建空的Prompt文件
touch prompts/agent1_collector.md prompts/agent2_analyzer.md prompts/agent3a_article.md prompts/agent3b_video.md

# 6. 创建空的脚本文件
touch scripts/agent1_collector.py scripts/agent2_analyzer.py scripts/agent3_rewriter.py scripts/batch_process.py

# 7. 创建文档文件
touch README.md SETUP.md WORKFLOW.md requirements.txt .env.example
touch docs/workflow-guide.md docs/tools-setup.md docs/best-practices.md
```

### 指令2: 按照Task 1-8，逐个填充文件内容

CURSOR，请按照以下优先级创建文件内容：

**P0 (必须立即完成)**:
1. ✅ taxonomy/failure_modes.yml (扁平结构，14个FM)
2. ✅ taxonomy/evidence_levels.yml (证据分级)
3. ✅ taxonomy/scoring_rubric.yml (评分细则)
4. ✅ templates/intake_card.md (智能体1输出)
5. ✅ templates/app_case_file.md (智能体2输出)
6. ✅ prompts/agent2_analyzer.md (智能体2 Prompt)
7. ✅ README.md (项目总览)
8. ✅ requirements.txt (依赖)

**P1 (重要)**:
9. ✅ scripts/agent1_collector.py
10. ✅ scripts/agent2_analyzer.py
11. ✅ scripts/agent3_rewriter.py
12. ✅ prompts/agent3a_article.md
13. ✅ prompts/agent3b_video.md
14. ✅ SETUP.md (安装指南)
15. ✅ WORKFLOW.md (工作流手册)

**P2 (可选，后续补充)**:
16. templates/article_template.md
17. templates/video_script_template.md
18. docs/workflow-guide.md
19. 各目录的README.md
20. .env.example

---

## 🎯 输出验证

完成后，请确认:

### 验证1: 目录结构完整
```bash
tree -L 2 -d sanxiang-wendao/
```
应该看到完整的目录结构

### 验证2: 核心文件完整
```bash
ls -lh taxonomy/*.yml
ls -lh templates/*.md
ls -lh prompts/*.md
ls -lh scripts/*.py
```
所有核心文件都应该存在且有内容

### 验证3: YAML文件格式正确
```bash
python -c "import yaml; yaml.safe_load(open('taxonomy/failure_modes.yml'))"
```
应该无报错

### 验证4: Python脚本语法正确
```bash
python -m py_compile scripts/*.py
```
应该无报错

---

## 📌 特别注意事项

### 关键1: failure_modes.yml必须是扁平结构

**错误示例** (嵌套):
```yaml
分发失败:
  FM001_流量红利消失:
    定义: ...
```

**正确示例** (扁平):
```yaml
failure_modes:
  - id: FM001
    name: 流量红利消失
    category: 分发失败
    definition: ...
```

### 关键2: 证据账本必须有"链接/出处"列

**表格格式**:
```markdown
| 断言 | 来源 | 链接/出处 | 证据等级 | 可信度 | 日期 | 备注 |
```

### 关键3: Python脚本必须可执行

- 添加shebang: `#!/usr/bin/env python3`
- 添加docstring
- 完整的错误处理
- 命令行参数支持

### 关键4: Prompt必须完整

- 包含输入说明
- 包含输出要求
- 包含禁止事项
- 包含示例

---

## 🚀 完成标志

当你完成所有任务后，应该能够:

1. ✅ 运行 `python scripts/agent1_collector.py collect "Perplexity"` 生成登记卡
2. ✅ 运行 `python scripts/agent2_analyzer.py analyze "Perplexity"` 生成深度分析
3. ✅ 运行 `python scripts/agent3_rewriter.py article "cases/2026/perplexity.md"` 生成文章
4. ✅ 打开 `taxonomy/failure_modes.yml` 看到14个扁平结构的FM
5. ✅ 打开 `README.md` 看到完整的项目说明

---

**优先级**: P0文件 > P1文件 > P2文件  
**质量要求**: 可直接使用，无需修改  
**时间估计**: 2-3小时完成所有文件
