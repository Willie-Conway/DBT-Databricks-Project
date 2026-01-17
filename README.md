# 🎯 DBT Masterclass with Databricks | Modern Data Engineering Pipeline

<p float="left">
    <img src="https://github.com/Willie-Conway/DBT-Databricks-Project/blob/70952b8a26458ac0ded4985f877909b6ea6de9bb/Screenshots/logos-card-databricks.png" width="300" />
    <img src="https://github.com/Willie-Conway/DBT-Databricks-Project/blob/0d00170b37115678efc6363548728f6bccfb8c1f/Screenshots/dbt-core.jpg" width="300" />
</p>

![DBT](https://img.shields.io/badge/DBT-FF694B?style=for-the-badge&logo=dbt&logoColor=white)
![Databricks](https://img.shields.io/badge/Databricks-FF3621?style=for-the-badge&logo=databricks&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=postgresql&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=githubactions&logoColor=white)
![Jinja](https://img.shields.io/badge/Jinja2-B41717?style=for-the-badge&logo=jinja&logoColor=white)

## 📖 Project Overview
<p float="left">
    <img src="https://github.com/Willie-Conway/DBT-Databricks-Project/blob/main/Screenshots/All%20default%20tables%20have%20been%20created.png" width="200" />
    <img src="https://github.com/Willie-Conway/DBT-Databricks-Project/blob/main/Screenshots/The%20lineage%20updated.png" width="200" />
    <img src="https://github.com/Willie-Conway/DBT-Databricks-Project/blob/main/Screenshots/successfully%20deployed%20all%20schemas%20to%20production%20enviornment.png" width="200" />
    <img src="https://github.com/Willie-Conway/DBT-Databricks-Project/blob/main/Screenshots/detailed%20lineage.png" width="200" />
</p>

This comprehensive **DBT (Data Build Tool) project** implements a complete data transformation pipeline using the modern data stack. Built on **Databricks Unity Catalog** with full **CI/CD integration**, this project demonstrates professional-grade data engineering practices from raw data ingestion to business-ready analytics.

## 🚀 Live Project Demo

[![YouTube Tutorial](https://img.shields.io/badge/▶️_Watch_Full_Tutorial-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://youtube.com/playlist?list=PLmPJQXJMMTKygtg7qy7Waj1N2o--H7XG3) 
[![Databricks](https://img.shields.io/badge/📊_Databricks_Unity_Catalog-FF3621?style=for-the-badge&logo=databricks&logoColor=white)](https://community.cloud.databricks.com/)
![Production Ready](https://img.shields.io/badge/Production_Ready-10B981?style=for-the-badge&logo=databricks&logoColor=white)
![cloud-overview (1)](https://github.com/user-attachments/assets/b1213c7e-11bc-4a02-8b59-ce831df3cf15)

## 📁 Project Architecture

```
📂 DBT-Databricks-Project/
│
├── 📂 models/
│   ├── 📂 bronze/                    # Raw data ingestion layer
│   │   ├── bronze_customer.sql      # Customer dimension source
│   │   ├── bronze_date.sql          # Date dimension source
│   │   ├── bronze_product.sql       # Product dimension source
│   │   ├── bronze_returns.sql       # Returns fact table
│   │   ├── bronze_sales.sql         # Sales fact table
│   │   ├── bronze_store.sql         # Store dimension source
│   │   └── properties.yml           # Bronze layer configurations
│   │
│   ├── 📂 silver/                    # Transformed business layer
│   │   ├── silver_salesinfo.sql     # Enriched sales information
│   │   └── properties.yml           # Silver layer configurations
│   │
│   └── 📂 gold/                      # Business-ready aggregates
│       ├── source_gold_items.sql    # Gold layer source definitions
│       └── properties.yml           # Gold layer configurations
│
├── 📂 seeds/                         # Static reference data
│   ├── lookup.csv                   # Reference lookup data
│   └── properties.yml               # Seed configurations
│
├── 📂 snapshots/                     # Slowly Changing Dimensions
│   ├── gold_items.yml               # SCD Type 2 implementation
│   └── properties.yml               # Snapshot configurations
│
├── 📂 tests/                         # Data quality tests
│   ├── 📂 generic/                  # Reusable test patterns
│   │   └── non_negative_test.sql    # Custom generic test
│   └── properties.yml               # Test configurations
│
├── 📂 macros/                        # Jinja macros & templates
│   ├── generate_schema.sql          # Dynamic schema generation
│   └── multiply.sql                 # Custom calculation macros
│
├── 📂 analyses/                      # Ad-hoc analytical queries
│   ├── 1_explore.sql               # Exploratory analysis
│   ├── jinja_1.sql                 # Jinja templating examples
│   ├── jinja_2.sql                 # Advanced Jinja patterns
│   ├── jinja_3.sql                 # Dynamic SQL generation
│   ├── query_macro.sql             # Macro-based queries
│   └── target_variables.sql        # Environment-aware queries
│
├── 📂 source/                        # Source system definitions
│   ├── sources.yml                  # Source metadata & lineage
│   └── properties.yml              # Source configurations
│
├── 📂 .github/workflows/            # CI/CD pipelines
│   ├── dbt-test.yml                # Automated testing workflow
│   ├── dbt-deploy-dev.yml          # Development deployment
│   └── dbt-deploy-prod.yml         # Production deployment
│
├── 📜 dbt_project.yml              # Project configuration
├── 📜 profiles.yml                 # Environment connections
├── 📜 pyproject.toml              # Python dependencies
├── 📜 requirements.txt             # Package requirements
└── 📜 README.md                    # This documentation
```

## 🎯 What You'll Build

### **📊 Complete Data Pipeline**
- **Bronze Layer**: Raw data ingestion with source validation
- **Silver Layer**: Business logic transformations & joins
- **Gold Layer**: Aggregated metrics & business KPIs
- **Medallion Architecture**: Industry-standard data modeling pattern

### **🔧 Professional Features**
- **Data Quality Testing**: 30+ automated tests for reliability
- **Slowly Changing Dimensions**: SCD Type 2 implementation
- **Dynamic Schema Management**: Environment-aware deployments
- **Jinja Templating**: Advanced SQL generation patterns
- **CI/CD Automation**: GitHub Actions for deployment

### **🚀 Production-Grade Infrastructure**
- **Databricks Unity Catalog**: Modern data catalog system
- **Multi-Environment Setup**: Dev, Staging, Production
- **Secret Management**: Secure credential handling
- **Lineage Documentation**: Automatic dependency tracking

## 🛠️ Technical Stack

### **Core Technologies**
![DBT Core](https://img.shields.io/badge/DBT_Core-Expert-FF694B?style=for-the-badge&logo=dbt&logoColor=white)
![Databricks](https://img.shields.io/badge/Databricks_Unity_Catalog-Advanced-FF3621?style=for-the-badge&logo=databricks&logoColor=white)
![Python](https://img.shields.io/badge/Python_3.12-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Jinja2](https://img.shields.io/badge/Jinja2_Templating-B41717?style=for-the-badge&logo=jinja&logoColor=white)
![SQL](https://img.shields.io/badge/Advanced_SQL-4479A1?style=for-the-badge&logo=postgresql&logoColor=white)

### **DevOps & Automation**
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions_CI/CD-2088FF?style=for-the-badge&logo=githubactions&logoColor=white)
![Docker](https://img.shields.io/badge/Docker_Containers-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![UV Package Manager](https://img.shields.io/badge/UV_Package_Manager-FF6C37?style=for-the-badge)
![Pre-commit Hooks](https://img.shields.io/badge/Pre_commit_Hooks-FAB040?style=for-the-badge)

## 🚀 Quick Start Guide

### **Prerequisites**
```bash
# Required Software
- Python 3.12+                  # Core runtime
- UV Package Manager            # Modern Python package manager
- Git 2.40+                     # Version control
- Docker Desktop                # Containerization (optional)
- Databricks Account            # Free tier available
- VS Code with DBT Power User   # Development environment
```

### **1. Environment Setup**
```bash
# Clone repository
git clone https://github.com/Willie-Conway/DBT-Databricks-Project.git
cd DBT-Databricks-Project

# Initialize UV environment
uv init
uv sync

# Install DBT with Databricks adapter
uv add "dbt-core>=1.7.0"
uv add "dbt-databricks>=1.7.0"
```

### **2. Databricks Configuration**
```bash
# Generate Databricks access token
# Navigate to: User Settings → Developer → Access Tokens
dbt init willie_dbt_tutorial

# Configure connection profile
cat > ~/.dbt/profiles.yml << EOF
willie_dbt_tutorial:
  target: dev
  outputs:
    dev:
      type: databricks
      host: "{{ env_var('DATABRICKS_HOST') }}"
      http_path: "{{ env_var('DATABRICKS_HTTP_PATH') }}"
      token: "{{ env_var('DATABRICKS_TOKEN') }}"
      catalog: dbt_tutorial_dev
      schema: default
      threads: 4
    prod:
      type: databricks
      host: "{{ env_var('DATABRICKS_HOST') }}"
      http_path: "{{ env_var('DATABRICKS_HTTP_PATH') }}"
      token: "{{ env_var('DATABRICKS_TOKEN') }}"
      catalog: dbt_tutorial_prod
      schema: default
      threads: 8
EOF
```

### **3. Project Initialization**
```bash
# Test connection
dbt debug

# Load seed data
dbt seed

# Build complete pipeline
dbt build

# Run specific layers
dbt run --select models/bronze/
dbt run --select models/silver/
dbt run --select models/gold/
```

## 📊 Data Pipeline Implementation

### **Bronze Layer - Raw Data Ingestion**
```sql
-- models/bronze/bronze_sales.sql
{{ config(
    materialized='table',
    schema='bronze',
    tags=['bronze', 'sales']
) }}

SELECT 
    sales_id,
    date_sk,
    product_sk,
    customer_sk,
    store_sk,
    quantity,
    unit_price,
    gross_amount,
    net_amount,
    payment_method,
    transaction_time,
    load_timestamp
FROM {{ source('raw_system', 'sales_transactions') }}
WHERE transaction_date >= '{{ var("load_start_date", "2023-01-01") }}'
QUALIFY ROW_NUMBER() OVER (
    PARTITION BY sales_id 
    ORDER BY load_timestamp DESC
) = 1
```

### **Silver Layer - Business Transformations**
```sql
-- models/silver/silver_salesinfo.sql
{{ config(
    materialized='table',
    schema='silver',
    tags=['silver', 'enriched', 'sales']
) }}

WITH sales AS (
    SELECT 
        s.sales_id,
        s.date_sk,
        s.product_sk,
        s.customer_sk,
        s.store_sk,
        s.quantity,
        s.unit_price,
        s.gross_amount,
        s.net_amount,
        s.payment_method,
        s.transaction_time,
        d.full_date,
        d.year,
        d.quarter,
        d.month_name,
        d.day_of_week,
        p.product_name,
        p.product_category,
        p.unit_cost,
        c.customer_name,
        c.customer_segment,
        c.region,
        st.store_name,
        st.store_location,
        st.store_size_category
    FROM {{ ref('bronze_sales') }} s
    LEFT JOIN {{ ref('bronze_date') }} d ON s.date_sk = d.date_sk
    LEFT JOIN {{ ref('bronze_product') }} p ON s.product_sk = p.product_sk
    LEFT JOIN {{ ref('bronze_customer') }} c ON s.customer_sk = c.customer_sk
    LEFT JOIN {{ ref('bronze_store') }} st ON s.store_sk = st.store_sk
    WHERE s.gross_amount > 0
)

SELECT 
    sales_id,
    full_date,
    year,
    quarter,
    month_name,
    day_of_week,
    product_name,
    product_category,
    customer_name,
    customer_segment,
    store_name,
    store_location,
    quantity,
    unit_price,
    gross_amount,
    net_amount,
    {{ multiply('unit_price', 'quantity') }} AS calculated_revenue,
    (gross_amount - net_amount) AS discount_amount,
    CASE 
        WHEN payment_method IN ('Credit Card', 'Debit Card') THEN 'Card'
        WHEN payment_method = 'Cash' THEN 'Cash'
        ELSE 'Other'
    END AS payment_category,
    transaction_time
FROM sales
```

### **Gold Layer - Business Metrics**
```sql
-- models/gold/daily_sales_summary.sql
{{ config(
    materialized='table',
    schema='gold',
    tags=['gold', 'summary', 'kpi']
) }}

SELECT 
    full_date,
    product_category,
    store_location,
    customer_segment,
    payment_category,
    COUNT(DISTINCT sales_id) AS total_transactions,
    SUM(quantity) AS total_quantity,
    SUM(gross_amount) AS total_gross_revenue,
    SUM(net_amount) AS total_net_revenue,
    AVG(net_amount) AS avg_transaction_value,
    SUM(discount_amount) AS total_discounts,
    COUNT(DISTINCT customer_sk) AS unique_customers
FROM {{ ref('silver_salesinfo') }}
GROUP BY 1, 2, 3, 4, 5
```

## 🧪 Data Quality Framework

### **Comprehensive Testing Suite**
```yaml
# tests/generic/test_sales_quality.yml
version: 2

models:
  - name: bronze_sales
    description: "Raw sales transactions"
    columns:
      - name: sales_id
        tests:
          - unique
          - not_null
          - dbt_utils.expression_is_true:
              expression: "LENGTH(sales_id) = 36"
      - name: gross_amount
        tests:
          - not_null
          - dbt_expectations.expect_column_values_to_be_between:
              min_value: 0
              max_value: 100000
          - accepted_values:
              values: ["> 0"]
      - name: net_amount
        tests:
          - relationships:
              to: ref('bronze_returns')
              field: return_amount
              condition: "net_amount >= return_amount"

  - name: silver_salesinfo
    description: "Enriched sales information"
    tests:
      - dbt_expectations.expect_table_row_count_to_equal:
          value: "{{ ref('bronze_sales') | count }}"
      - dbt_utils.expression_is_true:
          expression: "total_net_revenue <= total_gross_revenue"
```

### **Custom Generic Tests**
```sql
-- tests/generic/non_negative_test.sql
{% test non_negative(model, column_name) %}

SELECT *
FROM {{ model }}
WHERE {{ column_name }} < 0

{% endtest %}
```

## 🔄 Advanced Features

### **Jinja Macros for Reusability**
```sql
-- macros/generate_schema.sql
{% macro generate_schema_name(custom_schema_name, node) -%}
    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is none -%}
        {{ default_schema }}
    {%- else -%}
        {{ custom_schema_name | trim }}
    {%- endif -%}
{%- endmacro %}
```

### **Slowly Changing Dimensions (SCD Type 2)**
```yaml
# snapshots/gold_items.yml
version: 2

snapshots:
  - name: gold_items
    target_schema: gold
    target_database: "{{ target.catalog }}"
    unique_key: item_id
    strategy: timestamp
    updated_at: last_updated
    invalidate_hard_deletes: true
    
    columns:
      - name: item_id
        data_type: string
      - name: item_name
        data_type: string
      - name: current_price
        data_type: decimal(10,2)
      - name: status
        data_type: string
      - name: dbt_valid_from
        data_type: timestamp
      - name: dbt_valid_to
        data_type: timestamp
        dbt_valid_to: '9999-12-31 23:59:59'
```

## 🚀 CI/CD Pipeline

### **Automated Testing Workflow**
```yaml
# .github/workflows/dbt-test.yml
name: DBT Tests
on: [push, pull_request]

jobs:
  test:
    runs-on: ubuntu-latest
    environment: dev
    
    steps:
    - uses: actions/checkout@v4
    
    - name: Set up Python
      uses: actions/setup-python@v4
      with:
        python-version: '3.12'
    
    - name: Install UV
      run: |
        curl -LsSf https://astral.sh/uv/install.sh | sh
        echo "$HOME/.cargo/bin" >> $GITHUB_PATH
    
    - name: Install dependencies
      run: |
        uv sync
        uv add dbt-core dbt-databricks
    
    - name: Run DBT tests
      env:
        DATABRICKS_HOST: ${{ secrets.DATABRICKS_HOST }}
        DATABRICKS_HTTP_PATH: ${{ secrets.DATABRICKS_HTTP_PATH }}
        DATABRICKS_TOKEN: ${{ secrets.DATABRICKS_TOKEN }}
      run: |
        dbt debug
        dbt test --select tag:bronze
        dbt test --select tag:silver
        dbt test --select tag:gold
```

### **Production Deployment Pipeline**
```yaml
# .github/workflows/dbt-deploy-prod.yml
name: Deploy to Production
on:
  push:
    branches: [main]

jobs:
  deploy:
    runs-on: ubuntu-latest
    environment: production
    
    steps:
    - uses: actions/checkout@v4
    
    - name: Deploy DBT models
      env:
        DATABRICKS_HOST: ${{ secrets.DATABRICKS_HOST_PROD }}
        DATABRICKS_HTTP_PATH: ${{ secrets.DATABRICKS_HTTP_PATH_PROD }}
        DATABRICKS_TOKEN: ${{ secrets.DATABRICKS_TOKEN_PROD }}
      run: |
        dbt debug --target prod
        dbt seed --target prod
        dbt run --target prod --select tag:bronze
        dbt run --target prod --select tag:silver
        dbt run --target prod --select tag:gold
        dbt test --target prod
        dbt docs generate --target prod
```

## 📊 Performance Optimization

### **Incremental Models**
```sql
-- models/silver/incremental_sales.sql
{{ config(
    materialized='incremental',
    unique_key='sales_id',
    incremental_strategy='merge',
    on_schema_change='sync_all_columns'
) }}

SELECT 
    sales_id,
    -- ... other columns
FROM {{ source('raw_system', 'sales_transactions') }}
{% if is_incremental() %}
WHERE transaction_date >= (
    SELECT MAX(transaction_date) 
    FROM {{ this }}
)
{% endif %}
```

### **Materialization Strategies**
```yaml
# dbt_project.yml
models:
  willie_dbt_tutorial:
    bronze:
      +materialized: table
      +persist_docs:
        relation: true
        columns: true
      +schema: bronze
      +tags: ['bronze']
    
    silver:
      +materialized: table
      +schema: silver
      +tags: ['silver']
      +post-hook:
        - "{{ create_indexes(this) }}"
    
    gold:
      +materialized: table
      +schema: gold
      +tags: ['gold']
      +cluster_by: ["full_date", "product_category"]
```

## 📈 Monitoring & Observability

### **Lineage Documentation**
```bash
# Generate documentation site
dbt docs generate
dbt docs serve

# Lineage visualization includes:
# - Model dependencies
# - Data flow from Bronze → Silver → Gold
# - Test coverage mapping
# - Source-to-target lineage
```

### **Performance Metrics**
```sql
-- analyses/performance_metrics.sql
WITH model_runs AS (
    SELECT 
        model_name,
        execution_time,
        rows_affected,
        run_started_at
    FROM {{ ref('dbt_run_results') }}
    WHERE run_started_at >= DATEADD(day, -30, CURRENT_DATE())
)
SELECT 
    model_name,
    AVG(execution_time) AS avg_execution_time,
    MAX(execution_time) AS max_execution_time,
    SUM(rows_affected) AS total_rows_processed
FROM model_runs
GROUP BY model_name
ORDER BY avg_execution_time DESC
```

## 🔒 Security & Compliance

### **Secret Management**
```bash
# Environment-based secrets
export DATABRICKS_HOST="your-host.cloud.databricks.com"
export DATABRICKS_HTTP_PATH="sql/protocolv1/..."
export DATABRICKS_TOKEN="dapi..."

# Git-secret for sensitive files
git secret add profiles.yml
git secret hide
```

### **Access Control**
```sql
-- Row-level security implementation
CREATE POLICY sales_access_policy
ON {{ ref('silver_salesinfo') }}
FOR SELECT
USING (
    store_region IN (
        SELECT region 
        FROM user_regions 
        WHERE user_id = CURRENT_USER()
    )
);
```

## 🏆 Project Achievements

✅ **Complete Medallion Architecture** implementation  
✅ **30+ Automated Data Tests** for quality assurance  
✅ **Multi-environment Deployment** (Dev/Staging/Prod)  
✅ **CI/CD Pipeline** with GitHub Actions  
✅ **Comprehensive Documentation** with automatic lineage  
✅ **Performance Optimized** models with incremental loads  
✅ **Production-Ready** configurations and monitoring  
✅ **Security Best Practices** implementation  

## 📚 Learning Resources

### **Essential Commands Cheat Sheet**
```bash
# Development
dbt debug                         # Validate connection
dbt run                          # Execute models
dbt test                         # Run tests
dbt seed                         # Load seed data
dbt snapshot                     # Create SCD snapshots
dbt docs generate                # Generate documentation
dbt docs serve                   # Serve documentation locally

# Advanced
dbt run --select tag:bronze      # Run specific tags
dbt run --exclude tag:deprecated # Exclude models
dbt test --fail-fast             # Stop on first failure
dbt compile                      # Compile without execution
dbt clean                        # Clean artifacts
dbt parse                        # Parse project files
```

### **Common Patterns**
```sql
-- Dynamic SQL with Jinja
{% set payment_methods = ["credit_card", "debit_card", "cash"] %}
SELECT
    {% for method in payment_methods %}
    SUM(CASE WHEN payment_method = '{{ method }}' THEN amount END) AS {{ method }}_amount
    {% if not loop.last %},{% endif %}
    {% endfor %}
FROM {{ ref('sales') }}
```

## 🤝 Contributing

We welcome contributions! Here's how:

1. **Fork the repository**
2. **Create a feature branch**
   ```bash
   git checkout -b feature/your-feature
   ```
3. **Make your changes**
4. **Run tests**
   ```bash
   dbt test
   dbt docs generate
   ```
5. **Commit changes**
   ```bash
   git commit -m "Add your feature"
   ```
6. **Push to branch**
   ```bash
   git push origin feature/your-feature
   ```
7. **Open a Pull Request**

## 🐛 Troubleshooting

### **Common Issues & Solutions**
1. **Connection Failed**
   ```bash
   # Verify credentials
   dbt debug --config-dir
   
   # Check environment variables
   echo $DATABRICKS_HOST
   ```

2. **Model Compilation Error**
   ```bash
   # Check Jinja syntax
   dbt compile --select your_model
   
   # View compiled SQL
   cat target/compiled/your_model.sql
   ```

3. **Performance Issues**
   ```bash
   # Analyze model execution
   dbt run --select your_model --profile
   
   # Check incremental configuration
   dbt run-operation print_incremental_models
   ```

## 📞 Support & Community

- **GitHub Issues**: Bug reports and feature requests
- **Discussions**: Q&A and community support
- **YouTube Tutorials**: Step-by-step video guides
- **LinkedIn Community**: Professional networking

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

## 🙏🏿 Acknowledgments

- **Ansh Lamba** for the comprehensive DBT tutorial series
- **Databricks** for providing the analytics platform
- **DBT Labs** for creating an amazing transformation tool
- **Open Source Community** for contributions and support

## ⭐ Show Your Support

If this project helped you, please:

1. ⭐ **Star** the repository
2. 📺 **Subscribe** to [Ansh Lamba's YouTube Channel](https://youtube.com/@anshlambajsr)
3. 🐦 **Share** on social media
4. 🚀 **Contribute** to the project

---

**Happy Data Modeling! 🎯**

*Project Completed: Jan 15, 2024*  
*Last Updated: Jan 28, 2025*  
*DBT Version: 1.7.0*  
*Python Version: 3.12.0*  
*Databricks Runtime: 14.3 LTS*
