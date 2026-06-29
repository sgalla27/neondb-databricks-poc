# NeonDB + Databricks PoC

## Overview

This proof of concept demonstrates how data can be ingested from NeonDB (PostgreSQL), processed in Databricks using a Medallion Architecture, and transformed into analytics-ready datasets.

The solution follows a simple Bronze → Silver → Gold approach to improve data quality and support reporting, analytics, and future AI/ML use cases.

---

## Architecture

```text
NeonDB (PostgreSQL)
        |
        v
+------------------+
| Bronze Layer     |
| Raw Data         |
+------------------+
        |
        v
+------------------+
| Silver Layer     |
| Cleaned Data     |
+------------------+
        |
        v
+------------------+
| Gold Layer       |
| Business Metrics |
+------------------+
        |
        v
 Analytics / Reporting
```

---

## Objectives

- Validate connectivity between NeonDB and Databricks
- Ingest source data into Delta tables
- Implement a Medallion Architecture
- Improve data quality through transformations
- Create business-ready datasets for analytics
- Establish a foundation for future production implementation

---

## Medallion Layers

### Bronze

The Bronze layer contains raw data ingested directly from NeonDB.

Characteristics:
- Minimal transformations
- Historical data retained
- Serves as the source of truth
- Supports reprocessing if business rules change

Examples:
- Policies
- Submissions
- Quotes
- Transactions
- Staff records

### Silver

The Silver layer applies data quality checks and transformations.

Examples:
- Deduplication
- Type standardization
- Null handling
- Record validation
- Table joins

Outputs include cleaned and trusted datasets suitable for analysis.

### Gold

The Gold layer contains business-facing datasets optimized for reporting and dashboards.

Example metrics:
- Policy counts
- Premium totals
- Quote conversion rates
- Submission volumes
- Underwriter productivity metrics

---

## Data Flow

```text
Source Tables
      |
      v
Bronze Tables
      |
      v
Silver Tables
      |
      v
Gold Tables
      |
      v
Reports / Dashboards / Analytics
```

---

