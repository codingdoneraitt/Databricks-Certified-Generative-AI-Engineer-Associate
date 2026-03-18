-- =============================================================================
-- Lab 04-05: Batch Inference with ai_query()
--
-- Module: 04 — Assembling and Deploying Applications (22% of exam)
-- UI Sections: SQL Editor, SQL Warehouses
-- Estimated Time: 30–40 minutes
--
-- Learning Objectives:
--   - Use ai_query() against a Delta table of unstructured content
--   - Understand when batch inference is appropriate vs real-time serving
--   - Classify, summarize, or extract from an entire table with a single SQL query
--
-- Exam Objectives Covered:
--   - Batch inference with ai_query()
-- =============================================================================

-- Step 1: Verify your table exists and inspect sample rows


-- Step 2: Use ai_query() for text classification


-- Step 3: Use ai_query() for summarization


-- Step 4: Use ai_query() for information extraction


-- Step 5: Compare batch inference vs real-time serving use cases


-- =============================================================================
-- Key Takeaways:
--   - ai_query() runs LLM inference over entire Delta tables in SQL
--   - Batch inference: offline enrichment of large datasets (not user-facing)
--   - Real-time serving: user-facing, low-latency applications
--   - ai_query() uses the same Foundation Model APIs under the hood
-- =============================================================================
