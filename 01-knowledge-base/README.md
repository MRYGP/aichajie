# 知识库说明

## 📚 需要添加的文档

本目录需要添加以下11个核心文档才能完整使用评估系统：

### 理论文档（8个）- 放入 `theory/` 目录

1. **DOC-S001-创新三元法.md**
   - 源路径：`01-dao/theory/创新三元法.md`
   - 用途：第一性原理+边缘用户理论

2. **DOC-S032-破坏式创新.md**
   - 源路径：`02-shu/innovation/破坏式创新.md`
   - 用途：边缘市场切入理论

3. **DOC-S033-价值链创新.md**
   - 源路径：`02-shu/innovation/价值链创新.md`
   - 用途：改写规则理论

4. **DOC-S036-规则制定者.md**
   - 源路径：`02-shu/innovation/规则制定者.md`
   - 用途：规则制定理论

5. **DOC-S037-从0到1.md**
   - 源路径：`02-shu/innovation/从0到1.md`
   - 用途：垄断理论

6. **DOC-S047-三大标杆方法论.md**
   - 源路径：`02-shu/innovation/三大标杆的可复用方法论-Notion亚马逊Musk.md`
   - 用途：对标拷问理论

7. **DOC-S048-创业项目评估方法论.md**
   - 源路径：`02-shu/innovation/创业项目评估方法论-从归因分析到投资决策.md`
   - 用途：评估方法论理论基础

8. **时间的朋友.md**
   - 源路径：`01-dao/theory/时间的朋友.md`
   - 用途：长期主义理论

### 方法论文档（2个）- 放入 `methods/` 目录

9. **AI应用拆解实验室.md**
   - 源路径：`02-shu/innovation/AI应用拆解实验室：导师能力训练指南.md`
   - 用途：7步拆解法核心指令

10. **商业案例拆解指令.md**
    - 源路径：`shangye-anli/00_系统指令/Claude-案例拆解提示词.md`
    - 用途：3种模式补充

11. **模型提炼提示词.md** ✅ 已整合
    - 源路径：`_to_move/shangye-anli/00_系统指令/Claude-模型提炼提示词.md`
    - 用途：从多个案例中提炼可复用商业模型的方法论

12. **洞察归纳提示词.md** ✅ 已整合
    - 源路径：`_to_move/shangye-anli/00_系统指令/Claude-洞察归纳提示词.md`
    - 用途：从案例库中发现跨案例深层规律的方法论

### 案例文档（1个）- 放入 `cases/` 目录

11. **AI评估系统-商业计划书v2.0.md**
    - 源路径：`shangye-anli/01_案例库/按行业分类/科技互联网/AI创业项目评估系统-商业计划书v2.0.md`
    - 用途：11个功能详细说明

---

## 📝 添加方法

### 方法1：手动复制
1. 从原始仓库或本地文件系统找到上述文件
2. 复制到对应的 `theory/`、`methods/` 或 `cases/` 目录
3. 确保文件名与上述列表一致

### 方法2：从其他仓库克隆
如果这些文件在其他Git仓库中：
```bash
# 克隆包含这些文件的仓库
git clone <repository-url> temp_source

# 复制文件到对应位置
# 示例：
cp temp_source/01-dao/theory/创新三元法.md 01-knowledge-base/theory/DOC-S001-创新三元法.md
# ... 其他文件类似

# 清理临时目录
rm -rf temp_source
```

---

## ✅ 验证

添加完成后，检查：
```bash
# 检查理论文档（应该有8个）
ls 01-knowledge-base/theory/ | wc -l

# 检查方法论文档（应该有2个）
ls 01-knowledge-base/methods/ | wc -l

# 检查案例文档（应该有1个）
ls 01-knowledge-base/cases/ | wc -l
```

---

## 🚀 使用

添加完所有文档后：
1. 打开Claude.ai
2. 进入"三湘问道-AI项目评估" Project
3. 点击"Add Content"
4. 上传 `01-knowledge-base/` 下的所有文档
5. 等待处理完成

---

**注意**：知识库文件是评估系统的核心，必须添加完整才能获得最佳评估效果。
