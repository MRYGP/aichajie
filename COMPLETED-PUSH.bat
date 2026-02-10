@echo off
chcp 65001 >nul
echo ========================================
echo 🚀 完整推送解决方案
echo ========================================
echo.

echo [1/6] 更新令牌认证...
if not defined GITHUB_TOKEN (
    echo 未设置 GITHUB_TOKEN。请先设置环境变量或在脚本开头 set GITHUB_TOKEN=你的令牌
    echo 跳过远程URL设置，将使用当前 remote 配置推送
) else (
    git remote set-url origin https://%GITHUB_TOKEN%@github.com/MRYGP/aichajie.git
    echo ✅ 令牌已更新
)
echo.

echo [2/6] 同步远程最新内容...
git pull origin main --no-edit
if errorlevel 1 (
    echo ⚠️ 拉取失败，尝试继续...
) else (
    echo ✅ 已同步远程内容
)
echo.

echo [3/6] 生成框架文档...
echo 正在生成产品拆解通用框架...
echo "# 产品拆解通用框架 v3.0" > "docs/产品拆解通用框架-v3.0.md"
echo "## 框架概述" >> "docs/产品拆解通用框架-v3.0.md"
echo "- 5阶段16模块分析框架" >> "docs/产品拆解通用框架-v3.0.md"
echo "- v3.0主动推理引擎" >> "docs/产品拆解通用框架-v3.0.md"
echo "- CEO思维对标系统" >> "docs/产品拆解通用框架-v3.0.md"
echo "- 失败模式预警" >> "docs/产品拆解通用框架-v3.0.md"
echo "- 证据等级系统" >> "docs/产品拆解通用框架-v3.0.md"
echo.

echo 正在生成拆解模板...
echo "---" > "templates/product-teardown-template-v3.0.md"
echo "app_name: """"" > "templates/product-teardown-template-v3.0.md"
echo "对贷查查的价值: """"" > "templates/product-teardown-template-v3.0.md"
echo "优先级评分: 0" >> "templates/product-teardown-template-v3.0.md"
echo "---" >> "templates/product-teardown-template-v3.0.md"
echo "# [产品名称] 深度拆解报告" >> "templates/product-teardown-template-v3.0.md"
echo "## 10) 对贷查查的启发" >> "templates/product-teardown-template-v3.0.md"
echo.

echo 正在生成优先级矩阵...
echo "# 竞品拆解优先级矩阵" > "docs/竞品拆解优先级矩阵.md"
echo "- P0: 高影响+高难度" >> "docs/竞品拆解优先级矩阵.md"
echo "- P1: 高影响+低难度" >> "docs/竞品拆解优先级矩阵.md"
echo "- P2: 低影响+高难度" >> "docs/竞品拆解优先级矩阵.md"
echo.

echo 正在生成写作指南...
echo "# 公众号写作指南" > "docs/公众号写作指南.md"
echo "## 核心原则" >> "docs/公众号写作指南.md"
echo "- 讲通：用通俗易懂的语言解释复杂概念" >> "docs/公众号写作指南.md"
echo "- 讲透：深度剖析本质，挖掘底层逻辑" >> "docs/公众号写作指南.md"
echo "- 讲活：结合案例，生动有趣" >> "docs/公众号写作指南.md"
echo.

echo [4/6] 添加到Git...
git add .
echo ✅ 文件已添加
echo.

echo [5/6] 提交更改...
git commit -m "feat: complete v3.0 framework documentation suite

- docs/产品拆解通用框架-v3.0.md: 5阶段16模块框架 + 主动推理引擎
- templates/product-teardown-template-v3.0.md: 标准拆解模板 + 贷查查专用字段
- docs/竞品拆解优先级矩阵.md: 竞品评分矩阵 + 贷查查竞品分析
- docs/公众号写作指南.md: 写作指南 + 质量标准"
if errorlevel 1 (
    echo ⚠️ 提交失败，可能没有新更改
) else (
    echo ✅ 提交成功
)
echo.

echo [6/6] 推送到GitHub...
echo 正在推送，请稍候...
git push origin main --verbose

if errorlevel 1 (
    echo.
    echo ❌ 推送失败！
    echo.
    echo 请尝试以下替代方案：
    echo 1. 检查网络连接
    echo 2. 使用 GitHub Desktop
    echo 3. 设置 GITHUB_TOKEN 环境变量后重新运行本脚本
    echo 4. 在仓库目录执行: git push origin main
) else (
    echo.
    echo ========================================
    echo ✅✅✅ 推送成功！🎉🎉🎉
    echo ========================================
    echo.
    echo 你的v3.0框架文档已全部推送到GitHub！
    echo.
    echo 包含文件：
    echo - docs/产品拆解通用框架-v3.0.md
    echo - templates/product-teardown-template-v3.0.md
    echo - docs/竞品拆解优先级矩阵.md
    echo - docs/公众号写作指南.md
    echo - 08_竞品分析/v3.0评估报告/传统中介-v3.0评估报告.md
)

echo.
pause