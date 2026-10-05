# AGENTS.md

## Project: AI Engineering → AI Infrastructure Learning Lab

### 1. Purpose

This repository is a hands-on learning project for building practical knowledge across:

- LLM fundamentals
- Embeddings and vector search
- RAG
- Retrieval engineering
- Tool calling
- Agents
- MCP
- LLM serving
- AI infrastructure and platform engineering

The goal is not to build a generic chatbot or collect framework tutorials.

The goal is to understand how modern AI systems work as software systems, then progressively connect those concepts to production-oriented infrastructure, Kubernetes, observability, reliability, scalability, and GPU-backed inference.

The repository should therefore evolve as one coherent system rather than as unrelated weekly demos.

---

## 2. Learning Direction

The primary progression is:

```text
LLM Fundamentals
        ↓
Embeddings
        ↓
Vector Search
        ↓
RAG
        ↓
Retrieval Engineering
        ↓
Tool Calling
        ↓
Agents
        ↓
MCP
        ↓
LLM Serving
        ↓
Kubernetes / GPU
        ↓
AI Platform / AI Infrastructure
```

The implementation must follow this order unless there is a strong technical reason to deviate.

Do not introduce advanced abstractions before the underlying primitive has been implemented or understood directly.

---

## 3. Current Learner Profile

The project is being developed by a backend/infrastructure-oriented engineer with existing experience in:

- C# / .NET
- ASP.NET
- REST APIs
- Clean Architecture
- EF Core / SQL Server
- Redis
- RabbitMQ
- Docker
- Kubernetes
- Ansible
- SRE / infrastructure concepts

Python is being used here because it is the dominant language in the current LLM/Agent ecosystem.

Do not assume that the learner needs beginner-level explanations of:

- HTTP
- REST
- containers
- Docker
- Kubernetes basics
- databases
- APIs
- Git
- common software engineering practices

When explaining AI-specific concepts, assume strong software engineering fundamentals but limited prior depth in modern LLM application engineering.

---

## 4. Primary Roadmap

The project is organized around an approximately 8-week progression.

### Week 0 — Environment

Focus:

- Python environment
- dependency management
- Docker
- local development workflow
- repository structure
- testing foundation

Expected output:

A clean development environment and repository skeleton.

---

### Week 1 — LLM Fundamentals

Learn and implement:

- LLM and inference concepts
- tokens and tokenization
- context window
- system/user/assistant/tool messages
- generation parameters
- streaming
- structured output
- function/tool calling

Expected output:

A small application capable of sending prompts to an LLM, receiving structured output, and demonstrating basic tool calling.

---

### Week 2 — Embeddings + Vector Search

Learn:

- embeddings
- semantic similarity
- cosine similarity
- dot product
- nearest-neighbor search
- top-k retrieval
- vector databases
- metadata/payload filtering

Primary technology:

- Qdrant

Expected output:

A standalone semantic search engine.

The semantic search implementation should initially work without an LLM response-generation layer.

---

### Week 3 — RAG

Learn:

- document ingestion
- parsing
- chunking
- chunk overlap
- metadata
- embedding pipelines
- retrieval
- context construction
- answer generation
- source citations

Expected output:

A Kubernetes knowledge assistant using real documentation and a vector database.

The assistant should answer questions using retrieved context rather than relying only on model memory.

---

### Week 4 — Retrieval Engineering

Learn:

- metadata filtering
- keyword search
- semantic search limitations
- hybrid search
- reranking
- retrieval quality
- retrieval evaluation
- failure analysis
- basic latency considerations

Expected output:

An improved RAG pipeline with measurable retrieval quality.

Maintain a small evaluation dataset containing questions and expected relevant documents/chunks.

---

### Week 5 — Tool Calling + Agents

Learn:

- tool schemas
- tool selection
- tool execution
- tool results
- agent loops
- state
- observation
- basic guardrails
- read vs. write tools

Expected output:

A Kubernetes-focused Agent that can combine documentation retrieval with read-only Kubernetes tools.

Example tools:

- get_pods
- get_nodes
- get_deployment
- get_events
- get_logs

The Agent should be able to reason over tool results rather than merely executing a fixed scripted sequence.

---

### Week 6 — MCP

Learn:

- MCP purpose
- MCP architecture
- host/client/server model
- tools
- resources
- prompts
- transports
- basic authentication/security concepts

Expected output:

Expose the Kubernetes capabilities as an MCP server and consume them from the Agent through an MCP client.

Prefer current MCP documentation/specification over outdated tutorials.

Do not assume older tutorials or examples remain valid.

---

### Week 7 — LLM Serving

Learn:

- training vs. inference
- model weights
- GPU memory
- KV cache
- batching
- latency
- throughput
- tokens/sec
- time-to-first-token
- concurrency

Primary technology:

- vLLM

Expected output:

Run a local/self-hosted model through an inference server and expose it through an HTTP API.

---

### Week 8 — AI Infrastructure / Platform

Learn:

- GPU scheduling
- Kubernetes GPU workloads
- NVIDIA GPU Operator concepts
- resource requests/limits
- node labels
- taints/tolerations
- autoscaling
- inference observability
- failure modes
- caching
- quantization concepts
- model routing
- cost/performance trade-offs
- reliability and SLO thinking

Expected output:

A production-oriented architecture combining:

- API gateway/application
- Agent
- RAG
- Qdrant
- MCP
- LLM serving
- Kubernetes
- observability

---

## 5. Project Progression

The repository should contain three connected projects.

### Project 1 — Semantic Search Engine

```text
Documents
   ↓
Embedding
   ↓
Qdrant
   ↓
Semantic Query
   ↓
Top-K Results
```

Purpose:

Understand embeddings and vector search independently from LLM generation.

---

### Project 2 — Kubernetes Knowledge Assistant

```text
User
 ↓
Query
 ↓
Retrieval
 ↓
Qdrant
 ↓
Relevant Context
 ↓
LLM
 ↓
Answer + Sources
```

Purpose:

Understand RAG end-to-end.

---

### Project 3 — Kubernetes AI Agent + MCP + LLM Serving

```text
                         User
                           ↓
                         Agent
                    ┌──────┴──────┐
                    ↓             ↓
                   RAG        MCP Client
                    ↓             ↓
                 Qdrant       MCP Server
                                  ↓
                              Kubernetes

                           ↓
                     LLM Serving
                           ↓
                          vLLM
                           ↓
                         GPU
```

Purpose:

Connect AI application engineering with AI infrastructure/platform engineering.

---

## 6. Technology Principles

### Primary language

- Python for AI/LLM experimentation and application code

### Core technologies

- FastAPI
- Pydantic
- Docker
- Qdrant
- Git
- pytest

### Later technologies

- MCP
- vLLM
- Kubernetes GPU workloads
- NVIDIA GPU Operator
- Prometheus
- Grafana

### Framework policy

Do not introduce an agent/RAG framework before understanding the underlying primitive.

Avoid starting with:

- LangChain
- LlamaIndex
- LangGraph
- CrewAI
- AutoGen
- similar high-level orchestration frameworks

Frameworks may be introduced later for comparison or when they provide clear production value.

The learner should be able to explain what a framework is abstracting.

---

## 7. Engineering Rules

### 7.1 Prefer simple, explicit implementations

A small amount of clear code is preferred over a large framework.

Favor:

- explicit data flow
- readable functions
- typed interfaces
- deterministic behavior where possible
- small modules
- easy-to-test components

Avoid unnecessary abstraction.

---

### 7.2 Learn primitives before abstractions

Before introducing a framework abstraction, the repository should contain a minimal direct implementation of the underlying concept when practical.

Examples:

- understand vector search before using a RAG framework
- understand tool calling before using an Agent framework
- understand MCP client/server concepts before using a large integration layer

---

### 7.3 Production thinking starts early

Even during learning:

- configuration belongs outside source code
- secrets must not be committed
- failures should be observable
- network calls need timeouts
- external API calls should handle errors
- important behavior should have tests
- logs should be useful
- dependencies should be pinned/managed consistently

Do not prematurely build a giant production platform, but do not normalize bad engineering habits.

---

### 7.4 Separate concerns

Keep these concerns independently testable:

```text
ingestion
retrieval
embedding
generation
tools
agent logic
MCP
inference
API
infrastructure
observability
```

Do not place the entire system into one script.

---

### 7.5 Security

Never commit:

- API keys
- tokens
- credentials
- private certificates
- kubeconfigs
- production secrets

Use `.env` for local development only when appropriate, and keep secret files ignored by Git.

Write operations against external systems require explicit consideration of authorization and safety.

For the Kubernetes Agent, read-only tools are preferred first.

---

## 8. AI-Specific Engineering Rules

### Retrieval

A retrieval system is not considered complete because it returns documents.

Evaluate:

- relevance
- recall
- precision where practical
- ranking quality
- latency
- failure cases

Keep retrieval separate from generation so retrieval can be tested independently.

---

### RAG

Do not hide retrieval behavior behind a framework.

The repository should make it possible to inspect:

```text
query
→ retrieved chunks
→ scores
→ metadata
→ final context
→ model response
```

---

### Agents

Do not call a deterministic workflow an Agent without understanding why.

An Agent should involve model-driven tool selection or decision-making.

Tool definitions should be:

- small
- explicit
- typed
- observable
- safe

---

### MCP

Treat MCP as a protocol/interface layer, not as an AI model.

Keep the distinction clear between:

```text
LLM
Agent
Tool
MCP client
MCP server
External system
```

Prefer the current MCP specification and current official documentation.

---

### Inference

When learning serving, measure rather than merely observe that the model works.

Where practical, track:

- latency
- time to first token
- tokens/sec
- throughput
- concurrency
- GPU utilization
- memory usage

---

## 9. Learning Method

The default ratio is approximately:

```text
40% study
60% implementation
```

Do not spend most of a week watching tutorials.

For every major concept:

1. Learn the minimum theory required.
2. Implement a small direct example.
3. Test it.
4. Break it intentionally.
5. Inspect the failure.
6. Improve it.
7. Document what was learned.

The objective is understanding through implementation.

---

## 10. Documentation

Each meaningful milestone should have a short Markdown document explaining:

- What problem does this solve?
- How does it work?
- What components are involved?
- What trade-offs exist?
- What failed?
- What was learned?
- What would change in production?

Prefer diagrams and small examples over long prose.

Documentation should explain engineering decisions, not merely restate tutorials.

---

## 11. Testing

At minimum, maintain:

### Unit tests

For:

- chunking
- metadata handling
- retrieval logic
- ranking logic
- tool input validation
- deterministic business logic

### Integration tests

For:

- Qdrant
- LLM API/inference server
- MCP server/client
- Kubernetes tools where a safe test environment exists

### Evaluation tests

For RAG/Agent quality, maintain a small fixed dataset of representative questions.

Avoid treating model output as perfectly deterministic unless the chosen model/configuration actually guarantees that behavior.

---

## 12. Repository Structure

The structure may evolve, but the intended high-level layout is:

```text
.
├── week01-llm/
├── week02-embeddings/
├── week03-rag/
├── week04-retrieval/
├── week05-agents/
├── week06-mcp/
├── week07-serving/
├── week08-platform/
├── docs/
├── tests/
├── scripts/
├── infra/
├── README.md
├── AGENTS.md
└── .gitignore
```

Do not create directories merely to satisfy this layout.

Prefer structure that reflects actual code and responsibilities.

---

## 13. Definition of Done

A learning task is not complete merely because the code runs.

A task is considered complete when:

- the concept is understood well enough to explain
- the implementation works
- important behavior is testable
- failure cases were considered
- the code is reasonably readable
- the README/docs explain the result
- the implementation can be connected to the next stage of the roadmap

---

## 14. What Not To Optimize For

Do not optimize this repository for:

- maximum number of libraries
- maximum amount of code
- impressive-looking UI
- unnecessary microservices
- framework collecting
- copying tutorials without understanding
- premature distributed complexity

Optimize for:

```text
Understanding
+
Practical implementation
+
Engineering quality
+
Production awareness
```

---

## 15. Agent/AI Coding Instructions

AI coding agents working in this repository must:

1. Read this file before making changes.
2. Preserve the learning progression.
3. Prefer the simplest implementation that teaches the concept clearly.
4. Avoid introducing new frameworks without a concrete reason.
5. Do not silently change the architecture to a more abstract solution.
6. Explain important architectural or dependency decisions in concise documentation.
7. Keep generated code testable.
8. Never add secrets or credentials.
9. Do not implement future roadmap stages unless explicitly requested.
10. When a task is about environment/setup only, do not implement application features.

When requirements are ambiguous, preserve the current roadmap and existing architecture rather than expanding scope.

---

## 16. Immediate Milestone

The initial milestone is **environment preparation only**.

The repository should first be made ready for Week 1 development.

Environment preparation means:

- create the agreed repository structure
- initialize Python tooling
- configure dependency management
- configure formatting/linting/testing
- create basic configuration conventions
- create `.gitignore`
- create development documentation
- add minimal health/smoke checks where appropriate
- verify the environment works

It does **not** mean implementing:

- RAG
- vector search
- agents
- MCP
- model serving
- Kubernetes AI infrastructure

Those belong to later roadmap stages.

---

## 17. North Star

The long-term objective is to become capable of designing and operating systems at the intersection of:

```text
LLM Applications
      +
Agents / RAG / MCP
      +
LLM Serving
      +
Kubernetes
      +
GPU Infrastructure
      +
SRE
      +
Platform Engineering
```

The repository should make that progression visible through increasingly capable, increasingly production-oriented implementations.
