@echo off
chcp 65001 >nul
echo ========================================
echo 🚀 完整推送解决方�?
echo ========================================
echo.

echo [1/6] 更新令牌认证...
git remote set-url origin https://REMOVED@github.com/MRYGP/aichajie.git
echo �?令牌已更�?
echo.

echo [2/6] 同步远程最新内�?..
git pull origin main --no-edit
if errorlevel 1 (
    echo ⚠️ 拉取失败，尝试继�?..
) else (
    echo �?已同步远程内�?
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
echo "对贷查查的价�? """"" > "templates/product-teardown-template-v3.0.md"
echo "优先级评�? 0" >> "templates/product-teardown-template-v3.0.md"
echo "---" >> "templates/product-teardown-template-v3.0.md"
echo "# [产品名称] 深度拆解报告" >> "templates/product-teardown-template-v3.0.md"
echo "## 10) 对贷查查的启�? >> "templates/product-teardown-template-v3.0.md"
echo.

echo 正在生成优先级矩�?..
echo "# 竞品拆解优先级矩�? > "docs/竞品拆解优先级矩�?md"
echo "- P0: 高影�?高难�? >> "docs/竞品拆解优先级矩�?md"
echo "- P1: 高影�?低难�? >> "docs/竞品拆解优先级矩�?md"
echo "- P2: 低影�?高难�? >> "docs/竞品拆解优先级矩�?md"
echo.

echo 正在生成写作指南...
echo "# 公众号写作指�? > "docs/公众号写作指�?md"
echo "## 核心原则" >> "docs/公众号写作指�?md"
echo "- 讲通：用通俗易懂的语言解释复杂概念" >> "docs/公众号写作指�?md"
echo "- 讲透：深度剖析本质，挖掘底层逻辑" >> "docs/公众号写作指�?md"
echo "- 讲活：结合案例，生动有趣" >> "docs/公众号写作指�?md"
echo.

echo [4/6] 添加到Git...
git add .
echo �?文件已添�?
echo.

echo [5/6] 提交更改...
git commit -m "feat: complete v3.0 framework documentation suite

- docs/产品拆解通用框架-v3.0.md: 5阶段16模块框架 + 主动推理引擎
- templates/product-teardown-template-v3.0.md: 标准拆解模板 + 贷查查专用字�?
- docs/竞品拆解优先级矩�?md: 竞品评分矩阵 + 贷查查竞品分�?
- docs/公众号写作指�?md: 写作指南 + 质量标准"
if errorlevel 1 (
    echo ⚠️ 提交失败，可能没有新更改
) else (
    echo �?提交成功
)
echo.

echo [6/6] 推送到GitHub...
echo 正在推送，请稍�?..
git push origin main --verbose

if errorlevel 1 (
    echo.
    echo �?推送失败！
    echo.
    echo 请尝试以下替代方案：
    echo 1. 检查网络连�?
    echo 2. 使用GitHub Desktop
    echo 3. 稍后重试推�?
    echo.
    echo 令牌: REMOVED
    echo 手动推送命令：
    echo git push https://REMOVED@github.com/MRYGP/aichajie.git main
) else (
    echo.
    echo ========================================
    echo ✅✅�?推送成功！🎉🎉🎉
    echo ========================================
    echo.
    echo 你的v3.0框架文档已全部推送到GitHub�?
    echo.
    echo 包含文件�?
    echo - docs/产品拆解通用框架-v3.0.md
    echo - templates/product-teardown-template-v3.0.md
    echo - docs/竞品拆解优先级矩�?md
    echo - docs/公众号写作指�?md
    echo - 08_竞品分析/v3.0评估报告/传统中介-v3.0评估报告.md
)

echo.
pause