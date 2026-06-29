# 用户行为数据分析实战项目
## 项目简介
本项目完整还原数据分析标准工作流：使用MySQL完成原始用户行为数据清洗，再通过Python进行用户分层、行为指标统计与可视化分析，覆盖数据预处理、探索性分析、业务画像搭建全流程，适合求职数据分析岗位展示实战能力。

## 技术栈
- 数据清洗：MySQL（CASE标准化字段、统一枚举值）
- 分析可视化：Python Pandas、Matplotlib、Jupyter Notebook

## 数据处理流程
1. 原始数据源：用户行为原始业务数据
2. SQL清洗：执行 `sql/data_clean.sql`，统一设备、操作系统字段大小写与规范格式，输出干净数据集 `user_analysis.csv`
3. 深度分析：`analysis.ipynb` 读取清洗后数据，完成新用户画像、页面访问行为、渠道转化多维度统计与可视化图表
4. 辅助业务数据：`新用户画像大盘.xlsx`，用于补充分层对比分析

## 仓库文件目录
user-behavior-analysis/
├─ sql/
│ └─ data_clean.sql # MySQL 数据清洗脚本
├─ analysis.ipynb # Python 分析、可视化完整代码
├─ user_analysis.csv # SQL 清洗后标准分析数据集
└─ 新用户画像大盘.xlsx # 用户画像配套业务数据

## 项目复现步骤
1. 执行 `sql/data_clean.sql` 完成原始数据标准化清洗，导出 `user_analysis.csv`
2. 本地安装依赖：`pandas`、`matplotlib`
3. 打开 `analysis.ipynb` 逐行运行，即可复现全部分析结果与可视化图表
