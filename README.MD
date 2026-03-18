# Databricks Certified Generative AI Engineer Associate
## Hands-On Lab Guide

> Pass the Databricks Certified Generative AI Engineer Associate exam (March 18, 2026 version)
> through progressive hands-on labs covering every exam objective.
> **Estimated completion: 4 weeks (~1–2 hours/day)**

**Workspace:** https://dbc-73cdb582-6e04.cloud.databricks.com

---

## How to use this repo

Work through the modules in order. Each lab is a self-contained notebook or SQL file.
Every lab maps to one or more exam objectives and touches a specific part of the Databricks UI.
By the end you will have used every section of the left-hand navigation at least once.

### Copy-paste workflow (recommended)

Each lab notebook includes step-by-step Databricks UI instructions. Follow this pattern:

1. **Open the lab notebook** in this repo (locally or on GitHub/GitLab)
2. **In Databricks**, click **Workspace** in the left nav → navigate to your folder
3. **Create a new notebook**: click the **+** button → **Notebook**
4. **Name it** to match the lab (e.g., `01_workspace_orientation`)
5. **Set the language** to Python (or SQL for `.sql` labs)
6. **Copy each code cell** from the lab into the Databricks notebook cells
7. **Run cells** using `Shift+Enter` (or the play button)

> Each lab tells you exactly which Databricks UI tab to open and what to click.
> SQL labs (`.sql` files) should be run in the **SQL Editor** instead of a notebook.

### If you get stuck

Check the `solutions/` directory for completed notebooks with full working code.

---

## Databricks UI navigation map

Before starting, get familiar with these menu sections — every one appears in at least one lab:

| Menu item | Where it's used |
|---|---|
| **Catalog** | All labs — Unity Catalog is the backbone |
| **Jobs & Pipelines** | Module 04 — scheduling index sync pipelines |
| **Compute** | Module 00 — create and manage clusters |
| **Discover (Beta)** | Module 01 — explore available models and datasets |
| **Marketplace** | Module 01 — browse and install models |
| **SQL Editor** | Module 02 — write and run SQL against Delta tables |
| **Queries** | Module 02 — save and reuse SQL queries |
| **Dashboards** | Module 06 — visualize evaluation and monitoring metrics |
| **Genie** | Module 03 — natural language queries over structured data |
| **Alerts** | Module 06 — set alerts on monitoring metric thresholds |
| **Query History** | Module 02 — inspect past SQL executions |
| **SQL Warehouses** | Module 02 — the compute layer for SQL workloads |
| **Runs** | Module 04 — view pipeline and job run history |
| **Data Ingestion** | Module 02 — ingest source documents into Databricks |
| **Playground** | Module 01 — prototype prompts interactively |
| **AI Gateway (Beta)** | Module 06 — rate limiting, inference tables, usage tracking |
| **Experiments** | Module 06 — MLflow experiment runs and evaluation results |
| **Features** | Module 03 — feature store for structured retrieval data |
| **Models** | Module 04 — Unity Catalog model registry |
| **Serving** | Module 04 — deploy and manage model endpoints |

---

## Repo structure

```
├── 00_foundations/
│   ├── 01_workspace_orientation.ipynb
│   ├── 02_unity_catalog_basics.ipynb
│   └── 03_first_llm_call.ipynb
├── 01_design_applications/
│   ├── 01_prompt_engineering.ipynb
│   ├── 02_model_task_selection.ipynb
│   ├── 03_chain_design.ipynb
│   └── 04_agent_bricks.ipynb
├── 02_data_preparation/
│   ├── 01_document_extraction.ipynb
│   ├── 02_chunking_strategies.ipynb
│   ├── 03_delta_lake_pipeline.ipynb
│   ├── 04_retrieval_evaluation.ipynb
│   └── 05_reranking.ipynb
├── 03_application_development/
│   ├── 01_langchain_on_databricks.ipynb
│   ├── 02_prompt_augmentation.ipynb
│   ├── 03_guardrails_and_pii.ipynb
│   ├── 04_embedding_model_selection.ipynb
│   ├── 05_model_selection_from_hub.ipynb
│   ├── 06_agent_framework.ipynb
│   └── 07_multi_agent_genie.ipynb
├── 04_assembling_deploying/
│   ├── 01_pyfunc_chain.ipynb
│   ├── 02_vector_search_index.ipynb
│   ├── 03_rag_deployment_pipeline.ipynb
│   ├── 04_foundation_model_apis.ipynb
│   ├── 05_batch_inference_ai_query.sql
│   ├── 06_cicd_agent_components.ipynb
│   ├── 07_mcp_servers.ipynb
│   └── 08_apps_and_interfaces.ipynb
├── 05_governance/
│   ├── 01_pii_masking_guardrails.ipynb
│   └── 02_data_licensing.ipynb
├── 06_evaluation_monitoring/
│   ├── 01_mlflow_rag_evaluation.ipynb
│   ├── 02_llm_judges_and_scorers.ipynb
│   ├── 03_inference_tables_monitoring.ipynb
│   ├── 04_ai_gateway.ipynb
│   └── 05_sme_feedback_loop.ipynb
└── 07_capstone/
    └── full_rag_agent_app.ipynb
```

---

## Module 00 — Foundations
*UI: Compute, Catalog, Playground*
*Time: ~2 hours*

Get comfortable with Databricks before touching GenAI tooling.
No GenAI concepts yet — pure platform orientation.

### Lab 00-01: Workspace Orientation
Explore the workspace UI. Create a cluster under **Compute**. Run a basic Python notebook.
Read and write a Delta table. Run a SQL query using `%sql`. Understand the difference between
classic clusters and serverless compute.

### Lab 00-02: Unity Catalog Basics
Navigate to **Catalog** and understand the three-level namespace: `catalog → schema → table`.
Create a personal schema under `main` for all lab work (e.g., `main.genai_labs`).
Learn the GRANT/REVOKE syntax for permissions. Understand why Unity Catalog is the
governance layer for both data and AI assets — tables, models, functions, and volumes
all live here.

### Lab 00-03: Your First LLM Call
Open the **Playground** and send messages to `databricks-meta-llama-3-3-70b-instruct`.
Export the generated code into a notebook. Call the Foundation Model API programmatically
using the OpenAI-compatible SDK. Observe token counts and understand what drives cost.

---

## Module 01 — Design Applications (14%)
*UI: Playground, Discover, Marketplace*
*Exam weight: ~6 questions*

Learn to translate business requirements into AI pipeline designs and prompts.

### Lab 01-01: Prompt Engineering
In the **Playground**, experiment with zero-shot, few-shot, and chain-of-thought prompting.
Build prompts that return consistently structured outputs (JSON, numbered lists, specific formats).
Write a system prompt that prevents the model from leaking fictional internal data.
Understand how temperature affects output consistency.

### Lab 01-02: Model Task Selection
Learn the NLP task taxonomy: summarization, text classification, text generation, question
answering, feature extraction, token classification, text2text generation.
Map business requirements to the correct task type. Understand why "Sentencizer" is not
a valid LLM task category — a common exam trap.

### Lab 01-03: Chain Design
Design an AI pipeline for a realistic business scenario. Define inputs, outputs, and the
sequence of chain components: retriever → prompt template → LLM → output parser.
Understand the ReAct agent pattern (Reason → Act → Observe → Repeat) used in agentic systems.

### Lab 01-04: Agent Bricks
Use **Discover** and **Marketplace** to explore available model types and datasets.
Learn the three Agent Brick types: Knowledge Assistant (pre-built RAG Q&A),
Multiagent Supervisor (orchestrates specialized sub-agents), and Information Extraction
(structured output from unstructured documents). Practice matching a business scenario
to the correct Agent Brick.

---

## Module 02 — Data Preparation (14%)
*UI: SQL Editor, Queries, Query History, SQL Warehouses, Data Ingestion, Catalog*
*Exam weight: ~6 questions*

Build the document-to-vector pipeline that powers RAG applications.

### Lab 02-01: Document Extraction
Use **Data Ingestion** to upload sample documents into a Databricks Volume under **Catalog**.
Learn which Python package fits which document type: `pytesseract` for scanned images
(.jpg/.png — the exam answer for image-based documents), `pypdf` for text-based PDFs,
`beautifulsoup4` for HTML, and `unstructured` for mixed formats.
Extract text and filter out extraneous content: headers, footers, page numbers, and navigation.

### Lab 02-02: Chunking Strategies
Implement and compare chunking approaches: fixed-size with overlap, structure-aware
(split by markdown headers), token-based (match embedding model limits), and hierarchical
(parent-child: small child chunks for retrieval, large parent chunks for context).
Understand the core trade-off: larger chunks = more context, smaller chunks = more precise retrieval.
Learn the exam trap: to reduce embedding count in a vector DB, increase chunk size or
decrease overlap — not switch to a smaller embedding model.

### Lab 02-03: Delta Lake Pipeline
Build the full ingestion pipeline: extract → clean → chunk → write to Delta.
Use the **SQL Editor** with a **SQL Warehouse** to query your chunk table.
Save and name your queries under **Queries**. Check **Query History** to inspect past executions.
Enable Change Data Feed on your Delta table — this is required for Vector Search to sync
automatically. Write the output to `main.genai_labs.document_chunks` and verify in **Catalog**.

### Lab 02-04: Retrieval Evaluation
Learn the retrieval metrics required by the exam: Precision@K, Recall@K, MRR, MAP@K,
nDCG (for graded relevance), and RAG-specific metrics like context relevancy and
context sufficiency. Build a small evaluation harness that scores retrieval quality
using a set of known query/expected-answer pairs.

### Lab 02-05: Re-ranking
Understand two-stage retrieval: fast approximate vector search retrieves 50 candidates,
then a cross-encoder re-ranker re-scores them and returns the top 5 most relevant.
Implement a re-ranker, compare ranked results before and after, and understand
when the latency trade-off is justified.

---

## Module 03 — Application Development (30%)
*UI: Playground, Genie, Features, Experiments*
*Exam weight: ~14 questions — the heaviest section*

Build real LangChain chains, guardrails, and agents on Databricks.

### Lab 03-01: LangChain on Databricks
Build progressively more complex LangChain chains using `ChatDatabricks` as the LLM.
Start with a simple prompt → LLM → output parser chain. Add conversation history
for multi-turn chat. Add structured JSON output parsing. Understand what each
LangChain component does and when to use it.

### Lab 03-02: Prompt Augmentation
Implement the core RAG augmentation pattern: retrieve relevant context → inject into
the prompt → generate a grounded response. Build a function that enriches user queries
with structured user session data (account ID, transaction ID, customer tier).
Understand the difference between augmenting with retrieved documents and augmenting
with user-provided fields.

### Lab 03-03: Guardrails and PII
Implement input guardrails (detect and block prompt injection patterns), PII masking
(replace emails, phone numbers, and credit cards with placeholders before the LLM sees them),
and output guardrails (validate responses before returning to users).
Understand the three PII approaches: static preprocessing (recommended), inference-time
instructions (unreliable), and full data exclusion (overkill). Know why static preprocessing
is the exam-correct answer.

### Lab 03-04: Embedding Model Selection
Learn the key dimensions for choosing an embedding model: context length (must cover
your chunk size), embedding dimension (higher = richer representation), model size
(larger = more cost and latency), and the quality vs cost trade-off.
Practice the exam pattern: chunks are max 512 tokens, cost matters more than quality —
choose the smallest model whose context length is at least 512.

### Lab 03-05: Model Selection from Hub
Navigate **Discover** and Hugging Face model cards. Understand the fields that drive
selection: task type, license, parameter count, context length, and benchmark scores
(MMLU for general knowledge, HumanEval for code, MT-Bench for conversation quality).
Practice selecting the right model for code generation, summarization, reasoning,
and embedding tasks.

### Lab 03-06: Agent Framework with MLflow
Build a tool-calling agent using LangChain and the Databricks Agent Framework.
Define tools with descriptive docstrings — this is what constitutes the agent prompt
template for available functions. Enable MLflow tracing (`mlflow.langchain.autolog()`)
and view traces in **Experiments**. Register the agent in Unity Catalog via MLflow.
Note: on serverless compute, autologging must be called explicitly in every session.

### Lab 03-07: Multi-Agent Systems and Genie
Use **Genie** to run natural language queries over a structured Delta table — this is
how a Genie agent retrieves structured data inside a multi-agent system.
Navigate to **Features** and understand feature tables as an alternative retrieval
source for structured data (e.g., customer profile features keyed by account ID).
Understand when to route a query to the RAG agent vs the Genie/data agent.
Clearly compare evaluation (offline, pre-deployment, test datasets) vs monitoring
(online, post-deployment, real user traffic) — a distinct exam objective.

---

## Module 04 — Assembling and Deploying Applications (22%)
*UI: Models, Serving, Jobs & Pipelines, Runs, Catalog*
*Exam weight: ~10 questions*

Deploy your RAG application end-to-end on Databricks.

### Lab 04-01: PyFunc Chain
Wrap a RAG pipeline in an MLflow PyFunc model with explicit pre-processing
(input validation, PII masking) and post-processing (output formatting, quality checks).
Log the model to MLflow. Understand why PyFunc is the most flexible packaging option —
it supports any Python logic, not just ML frameworks.

### Lab 04-02: Vector Search Index
Create a Vector Search endpoint and a Delta Sync Index with managed embeddings.
Understand the two index types: Delta Sync (auto-syncs from a Delta table, most common)
vs Direct Vector Access (manual updates via API, self-managed embeddings only).
Query the index using ANN (vector similarity), hybrid (vector + keyword), and understand
when each query type is appropriate. Configure the index based on embedding count,
update frequency, latency requirements, and cost budget.

### Lab 04-03: Full RAG Deployment Pipeline
Deploy a complete RAG chain as a Model Serving endpoint following the correct sequence:
chunk → Delta table → Vector Search index → build chain → log with MLflow →
register in Unity Catalog under **Models** → create endpoint under **Serving** →
enable inference tables. This sequence is a recurring exam question.

### Lab 04-04: Foundation Model API Types
Understand the two Foundation Model API tiers: pay-per-token (instant, zero configuration,
ideal for prototyping and variable workloads) vs provisioned throughput (reserved capacity,
SLA guarantees, HIPAA-compliant, supports fine-tuned models, required for production).
Practice selecting the right tier for given requirements.

### Lab 04-05: Batch Inference with ai_query()
Use the **SQL Editor** to run `ai_query()` against a Delta table of unstructured content.
Understand when batch inference is appropriate (offline enrichment of large datasets)
vs real-time model serving (user-facing, low-latency applications).
Classify, summarize, or extract from an entire table with a single SQL query.

### Lab 04-06: CI/CD for Agent Components
Implement prompt version control using the MLflow Prompt Registry so prompts are
versioned and auditable rather than hardcoded strings. Write component tests for the
retriever and agent tools before promoting to production. Understand environment promotion:
dev → staging → prod using different Unity Catalog schemas per environment.
Schedule a Vector Search index sync as a **Job** and inspect run history under **Runs**.

### Lab 04-07: MCP Servers
Understand the three MCP server types: managed (Unity Catalog functions automatically
become agent tools), external (pre-built integrations for services like Slack or GitHub),
and custom (you build a server for proprietary systems). Understand how MCP makes tool
access governed, versioned, and auditable through Unity Catalog.

### Lab 04-08: Apps and Interfaces
Understand the options for delivering an agent to end users: Databricks Apps
(a hosted web UI inside Databricks), Slack integration, Microsoft Teams integration,
and REST API consumption. Build a minimal Databricks App that wraps your deployed
RAG endpoint with a conversational interface.

---

## Module 05 — Governance (8%)
*UI: Catalog (permissions), SQL Editor*
*Exam weight: ~4 questions*

Small section on the exam but governance concepts appear in questions across all domains.

### Lab 05-01: PII Masking and Input Guardrails
Compare three approaches to PII handling: static preprocessing (recommended — mask before
the LLM sees the data), inference-time instructions (not reliable — LLM still receives PII),
and full data exclusion (loses useful non-PII context). Implement production-grade input
guardrails and PII masking. Verify that sensitive tables have appropriate access controls
in **Catalog**.

### Lab 05-02: Data Licensing and Legal Risk
Review license types relevant to RAG knowledge bases: Apache 2.0 and MIT (safe for commercial
use), CC BY (safe with attribution), CC BY-NC (cannot use commercially), CC BY-SA (ShareAlike
creates derivative licensing obligations), and proprietary/copyrighted sources (cannot use
without a license). Understand GDPR implications for any personal data in your knowledge base.
For each problematic source type, know the recommended mitigation.

---

## Module 06 — Evaluation and Monitoring (12%)
*UI: Experiments, AI Gateway, Dashboards, Alerts*
*Exam weight: ~5 questions*

Close the loop: evaluate quality before deployment, monitor it after.

### Lab 06-01: MLflow RAG Evaluation
Use `mlflow.genai.evaluate()` with built-in scorers against a labeled test dataset.
Understand which scorers require ground truth (correctness) vs which are reference-free
(groundedness, relevance, context sufficiency, safety). Learn the quality root-cause sequence:
check context sufficiency first → then groundedness → then correctness.
View results in **Experiments**.

### Lab 06-02: LLM Judges and Custom Scorers
Build a custom MLflow Scorer using the `Guidelines` class to encode domain-specific rules.
Build a Python-function-based Scorer for application-specific quality criteria.
Understand the difference between LLM-as-a-judge evaluation and deterministic rule-based
evaluation, and when to use each.

### Lab 06-03: Inference Tables and Agent Monitoring
Enable inference tables on a Model Serving endpoint to log every request and response
to a Delta table. Configure Agent Monitoring to continuously score production traffic
using the same Scorers used in offline evaluation. Query inference table data in
the **SQL Editor**. Build a **Dashboard** visualizing quality scores, latency, and
cost metrics over time.

### Lab 06-04: AI Gateway
Navigate to **AI Gateway**. Configure rate limiting on an endpoint to cap token consumption
per minute. Enable inference tables and usage tables for audit and cost tracking.
Understand the three AI Gateway components: Inference Tables (per-request logs),
Usage Tables (aggregated token/cost metrics per team or user), and Rate Limiting
(abuse prevention and cost control). Set an **Alert** to fire when error rate or
quality score crosses a threshold.

### Lab 06-05: SME Feedback Loop
Build the human-in-the-loop improvement cycle: export sampled production queries
from inference tables → have a subject matter expert annotate them with labels and
correction notes → convert annotations into a golden evaluation dataset →
re-run `mlflow.genai.evaluate()` with the correctness scorer using ground truth →
compare new metrics against the baseline run in **Experiments** →
promote the improved version if metrics improve.

---

## Module 07 — Capstone Project
*UI: All of the above*
*Time: 4–6 hours*

### Lab 07: Full RAG Agent Application

Build a complete, production-grade customer support agent for "Fabrikam Industrial Supplies"
that integrates every skill from the previous modules.

The agent must:
- Answer questions from a company knowledge base using RAG with Vector Search
- Look up real-time order status via a registered Unity Catalog tool
- Mask PII before sending any data to the LLM
- Reject malicious inputs via input guardrails
- Be packaged as a PyFunc model with pre- and post-processing
- Be registered in Unity Catalog and deployed to a Model Serving endpoint
- Have inference tables enabled from day one
- Pass retriever and agent component tests before deployment
- Be evaluated against a golden dataset using MLflow scorers
- Have AI Gateway rate limiting and usage tracking configured

Work through the capstone section by section. Each section references the module where
you learned the underlying skill — go back and review if needed.

---

## 4-week study schedule

| Week | Modules | Focus |
|---|---|---|
| **Week 1** | 00 + 01 + 02 | Platform foundations, prompt design, data pipeline |
| **Week 2** | 03 | Application development — the heaviest exam domain |
| **Week 3** | 04 + 05 | Deployment, governance, CI/CD |
| **Week 4** | 06 + 07 + review | Evaluation, monitoring, capstone, practice questions |

---

## Exam objective → lab cross-reference

| Exam objective | Lab |
|---|---|
| Design prompts for formatted responses | 01-01, 03-02 |
| Select model tasks for business requirements | 01-02 |
| Select chain components | 01-03 |
| Agent Bricks (Knowledge Assistant, Multiagent Supervisor, Information Extraction) | 01-04 |
| Chunking strategies and trade-offs | 02-02 |
| Document extraction (pytesseract, pypdf, beautifulsoup4) | 02-01 |
| Write chunks to Delta Lake / Unity Catalog | 02-03 |
| Retrieval evaluation metrics | 02-04 |
| Re-ranking | 02-05 |
| LangChain on Databricks | 03-01 |
| Prompt augmentation / RAG pattern | 03-02 |
| Guardrails and PII masking | 03-03, 05-01 |
| Embedding model selection | 03-04 |
| Model selection from hub / model cards | 03-05 |
| Agent Framework with MLflow tracing | 03-06 |
| Multi-agent systems / Genie Spaces | 03-07 |
| Evaluation vs monitoring phases | 03-07, 06-01 |
| PyFunc chain with pre/post-processing | 04-01 |
| Vector Search index creation and querying | 04-02 |
| RAG deployment sequence | 04-03 |
| Foundation Model API types (pay-per-token vs provisioned) | 04-04 |
| Batch inference with ai_query() | 04-05 |
| CI/CD best practices (prompts, indexes, environments) | 04-06 |
| MCP servers (managed / external / custom) | 04-07 |
| Apps and user-facing interfaces | 04-08 |
| PII masking approaches | 05-01 |
| Data licensing and legal risk | 05-02 |
| MLflow evaluation with built-in scorers | 06-01 |
| LLM judges, Guidelines, custom Scorers | 06-02 |
| Inference tables and Agent Monitoring | 06-03 |
| AI Gateway (rate limiting, usage tables, inference tables) | 06-04 |
| SME feedback loop | 06-05 |

---

## Key resources

- **Official exam guide (March 18, 2026):** https://www.databricks.com/learn/certification/genai-engineer-associate
- **Databricks Academy (free courses):** https://www.databricks.com/learn/training
- **Vector Search docs:** https://docs.databricks.com/aws/en/vector-search/vector-search
- **MLflow GenAI docs:** https://mlflow.org/docs/latest/genai
- **Foundation Model APIs:** https://docs.databricks.com/aws/en/machine-learning/foundation-model-apis/
- **Agent Framework:** https://docs.databricks.com/aws/en/generative-ai/agent-framework/