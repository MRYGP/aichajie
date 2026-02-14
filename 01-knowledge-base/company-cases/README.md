# 成功公司案例库

## 简介

本库收录了15个成功公司的完整成长路径，用于AI产品分析时的案例对标。通过对比产品与成功公司的早期阶段，可以：

- 学习成功公司的成长路径
- 识别相似点和差异点
- 提炼可复制的策略
- 避免已知的失败陷阱

### v3.2 案例模板要求（必读）

自 v3.2 起，案例写作须符合以下**强制要求**（详见 `04-case-library/case-expansion-roadmap.md`）：

**成功案例**：
- 必须有 **「失败对照」**：至少 1 个同类失败者 + 对比表（反共识可证伪性、楔子、巨头盲区、时机窗口）+ 关键教训
- 必须有 **「可迁移规律 vs 不可迁移因素」**：区分可学习规律与时代红利/偶然因素
- 反共识部分须包含 **可证伪设计**（D30/D60 预测 + Kill 阈值）与 **楔子分析**
- 巨头盲区须写 **下场触发条件**；时机窗口须写 **半衰期**

**失败案例**：
- 必须有 **「D30 预警信号」**：至少 3 个信号，每个含观测指标 + 危险阈值 + 实际数据 + 是否触发
- 必须有 **「预警命中率回测」** 与 **「如果要救，最小代价改法」**

不符合上述要求的案例不计入正式案例库。成功/失败案例模板全文见：`04-case-library/case-expansion-roadmap.md` → 案例文件模板。

## 案例列表

| 公司 | 行业 | 核心策略 | 发展阶段 | 文档 |
|------|------|---------|---------|------|
| Notion | 协作工具 | PLG+Freemium | 2013-2024 | [notion-journey.md](./notion-journey.md) |
| Amazon | 电商平台 | 飞轮效应+长期主义 | 1994-至今 | [amazon-flywheel.md](./amazon-flywheel.md) |
| Tesla | 电动汽车 | 第一性原理+垂直整合 | 2003-至今 | [tesla-strategy.md](./tesla-strategy.md) |
| Netflix | 流媒体 | 破坏式创新+订阅制 | 1997-至今 | [netflix-transformation.md](./netflix-transformation.md) |
| Airbnb | 共享经济 | 双边市场+社区驱动 | 2008-至今 | [airbnb-growth.md](./airbnb-growth.md) |
| Slack | 企业协作 | PLG+病毒传播 | 2013-至今 | [slack-plg.md](./slack-plg.md) |
| Zoom | 视频会议 | 破坏式创新+易用性 | 2011-至今 | [zoom-disruption.md](./zoom-disruption.md) |
| Figma | 设计工具 | 协作优先+浏览器 | 2012-至今 | [figma-collaborative.md](./figma-collaborative.md) |
| Stripe | 支付平台 | 开发者优先+API | 2010-至今 | [stripe-developer-first.md](./stripe-developer-first.md) |
| Shopify | 电商平台 | 平台战略+生态 | 2006-至今 | [shopify-platform.md](./shopify-platform.md) |
| Canva | 设计工具 | 设计民主化+模板 | 2012-至今 | [canva-democratization.md](./canva-democratization.md) |
| Linear | 项目管理 | 产品卓越+极简 | 2019-至今 | [linear-product-excellence.md](./linear-product-excellence.md) |
| GitHub | 代码托管 | 社区驱动+开源 | 2008-至今 | [github-community.md](./github-community.md) |
| OpenAI | AI模型 | 技术突破+API | 2015-至今 | [openai-model.md](./openai-model.md) |
| Anthropic | AI安全 | 安全优先+对齐 | 2021-至今 | [anthropic-safety.md](./anthropic-safety.md) |

## 使用方法

### 步骤1：识别产品阶段

判断产品当前处于哪个阶段：
- **Seed阶段**（0-100用户）：验证PMF
- **A轮阶段**（100-1万用户）：建立增长机制
- **B轮阶段**（1万-10万用户）：规模化扩张
- **C轮+阶段**（10万+用户）：商业化+护城河

### 步骤2：找对标案例

1. 打开本README，浏览15个案例
2. 根据以下维度找对标：
   - **同赛道**：类似的产品类型
   - **同阶段**：类似的发展阶段
   - **同策略**：类似的增长策略
   - **同模式**：类似的商业模式

3. 初步筛选2-3个最相似的案例

### 步骤3：深度对比分析

1. 打开对应的案例文档，阅读"发展阶段"部分
2. 对比相似点：
   - 目标用户是否相似？
   - 增长策略是否相似？
   - 商业模式是否相似？
3. 识别差异点：
   - 外部环境差异（时间/市场/政策）
   - 资源禀赋差异（资金/团队/技术）
4. 分析影响：这些差异会如何影响产品路径？

### 步骤4：提炼可学习路径

1. 阅读"可学习路径"部分
2. 如果完全复制对标公司的路径，具体要做什么？
3. 设计时间表：Month 1-3/4-6/7-12的具体动作
4. 识别避坑指南：对标公司犯过的错误，如何避免？

## 示例

**分析一个AI协作工具（类似Notion早期）**：

1. **识别阶段**：当前1000用户，处于A轮阶段

2. **找对标**：
   - 主要对标：Notion（同赛道+同阶段）
   - 次要对标：Slack（同策略：PLG）

3. **打开文档**：阅读`notion-journey.md`

4. **深度对比**：
   - **相似点**：
     - 目标用户：个人/小团队（相似度⭐⭐⭐⭐⭐）
     - 增长策略：PLG+Freemium（相似度⭐⭐⭐⭐）
     - 商业模式：订阅制（相似度⭐⭐⭐⭐）
   - **差异点**：
     - 外部环境：Notion在2016年（AI未成熟），现在2026年（AI成熟）
     - 资源禀赋：Notion有融资，我们只有100万

5. **可学习路径**：
   - Month 1-3：MVP上线，个人免费
   - Month 4-6：积累1000种子用户，NPS>70
   - Month 7-12：添加AI功能（Notion没有的），差异化

6. **避坑指南**：
   - Notion前3年不赚钱，我们也要有耐心
   - Notion功能过多导致复杂，我们要保持简洁

## 按策略分类

### PLG（产品驱动增长）
- Notion、Slack、Figma、Linear

### 破坏式创新
- Zoom、Canva、Netflix

### 平台战略
- Amazon、Shopify、Stripe

### 社区驱动
- GitHub、Notion、Airbnb

## 更新日志

- **2026-01-19**：创建初始版本，包含15个成功公司案例文档

## 下一步

- [ ] 补充失败案例（学习失败教训）
- [ ] 添加AI产品专属案例
- [ ] 建立案例组合分析（多个案例融合）

---

**维护者**：三湘问道团队  
**最后更新**：2026-01-19
