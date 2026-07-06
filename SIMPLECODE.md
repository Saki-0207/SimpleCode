# SimpleCode 项目

终端里的 AI 编程助手（Python 实现）。本文件记录项目的技术栈与开发约定，供协作与自动化参考。

## 技术栈
- Python 3.11+
- Textual（终端 TUI）
- 模型后端可插拔：anthropic / openai / openai-compat 三种协议
- 打包：hatchling + uv

## 代码规范
- commit message 用英文，遵循 Conventional Commits（feat / fix / docs / ci …）
- 变量与函数命名用 snake_case，类名用 PascalCase
- 模块按职责分目录：tools / commands / agents / teams / skills / hooks / mcp / memory
