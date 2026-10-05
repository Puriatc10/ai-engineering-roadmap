# AI Engineering → AI Infrastructure Learning Lab

This repository is a hands-on learning project designed to build practical, production-oriented knowledge across modern AI application engineering and infrastructure.

The core philosophy is **learning primitives before abstractions**: understanding how LLMs, embeddings, retrieval, agents, protocols, and inference servers work directly in code before introducing higher-level frameworks or distributed platforms.

---

## Roadmap

```text
Week 0: Environment Setup (Current Milestone)
  ↓
Week 1: LLM Fundamentals (Tokens, Context, Structured Output, Primitives)
  ↓
Week 2: Embeddings & Vector Search (Semantic Search, Similarity, Qdrant)
  ↓
Week 3: RAG (Ingestion, Chunking, Retrieval, Answer Generation)
  ↓
Week 4: Retrieval Engineering (Hybrid Search, Reranking, Evaluation)
  ↓
Week 5: Tool Calling & Agents (Tool Schemas, Agent Loops, Kubernetes Tools)
  ↓
Week 6: Model Context Protocol (MCP Server/Client Architecture)
  ↓
Week 7: LLM Serving (Inference, vLLM, KV Cache, Metrics & Serving APIs)
  ↓
Week 8: AI Infrastructure / Platform (Kubernetes, GPU Workloads, Observability)
```

---

## Current Status: Week 0 — Environment Setup

The repository is currently at **Week 0: Environment Preparation**.

### What is configured
- Project layout aligned with roadmap stages
- Python `>=3.11` runtime baseline (tested with Python 3.12)
- `uv` project and dependency management configuration (`pyproject.toml`)
- Code quality tooling (`ruff` for linting and formatting)
- Test foundation (`pytest`) with initial environment smoke test
- Environment variable conventions (`.env.example`) and comprehensive `.gitignore`
- Local developer check scripts (`scripts/check.ps1`, `scripts/check.sh`)

### What is DELIBERATELY NOT implemented yet
In accordance with the learning roadmap, no application or AI logic has been implemented yet:
- ❌ No LLM calls or prompt templates
- ❌ No embeddings or vector database integrations (Qdrant)
- ❌ No RAG pipelines or document chunking
- ❌ No agents, workflows, or tool calling logic
- ❌ No MCP clients or servers
- ❌ No vLLM or model serving setups
- ❌ No Kubernetes manifests, GPU workloads, or observability platforms

---

## Prerequisites

- **Python**: `>=3.11` (Python 3.12 recommended)
- **uv**: `>=0.5.0` (Fast Python package manager)
- **Git**

---

## Getting Started

### 1. Initialize Virtual Environment & Dependencies

Run `uv sync` to create the local `.venv` and install development dependencies:

```bash
uv sync
```

### 2. Environment Variables

Copy the environment template:

```bash
cp .env.example .env
```

*(Note: No external API keys are required for Week 0.)*

---

## Developer Workflow

Use `uv run` to execute commands inside the managed virtual environment:

### Code Formatting
```bash
# Check formatting
uv run ruff format --check .

# Apply formatting
uv run ruff format .
```

### Linting
```bash
# Run linter
uv run ruff check .

# Fix auto-fixable lint issues
uv run ruff check --fix .
```

### Testing
```bash
# Run pytest test suite
uv run pytest
```

### Run All Verification Checks
- **PowerShell (Windows)**:
  ```powershell
  .\scripts\check.ps1
  ```
- **Bash (Linux / macOS / WSL)**:
  ```bash
  ./scripts/check.sh
  ```

---

## Repository Structure

```text
.
├── week01-llm/         # Week 1: LLM Fundamentals (Planned)
├── week02-embeddings/  # Week 2: Embeddings & Vector Search (Planned)
├── week03-rag/         # Week 3: RAG (Planned)
├── week04-retrieval/   # Week 4: Retrieval Engineering (Planned)
├── week05-agents/      # Week 5: Tool Calling & Agents (Planned)
├── week06-mcp/         # Week 6: Model Context Protocol (Planned)
├── week07-serving/     # Week 7: LLM Serving (Planned)
├── week08-platform/    # Week 8: AI Infrastructure & Platform (Planned)
├── docs/               # Architecture guides and documentation
├── tests/              # Unit, integration, and smoke tests
├── scripts/            # Development helper scripts
├── infra/              # Infrastructure manifests & configs
├── .env.example        # Environment variable template
├── .gitignore          # Git exclusion rules
├── .python-version     # Target Python version pin
├── AGENTS.md           # Master roadmap and architectural instructions
├── pyproject.toml      # Project configuration, dependencies, tool settings
└── README.md           # Project documentation and getting started guide
```
