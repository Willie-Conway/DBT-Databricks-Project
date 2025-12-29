# 🎯 DBT - The Ultimate Guide | With CI/CD  

[![GitHub](https://img.shields.io/badge/GitHub-Repository-blue?logo=github)](https://github.com/anshlambagit/AnshLamba)  
[![YouTube](https://img.shields.io/badge/YouTube-Video-red?logo=youtube)](https://youtube.com/playlist?list=PLmPJQXJMMTKygtg7qy7Waj1N2o--H7XG3)  
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)  

<p float="left">
    <img src="https://github.com/Willie-Conway/DBT-Databricks-Project/blob/70952b8a26458ac0ded4985f877909b6ea6de9bb/Screenshots/logos-card-databricks.png" width="300" />
    <img src="https://github.com/Willie-Conway/DBT-Databricks-Project/blob/0d00170b37115678efc6363548728f6bccfb8c1f/Screenshots/dbt-core.jpg" width="300" />
</p>

---

## 📖 Overview  
This repository accompanies the **5-hour comprehensive tutorial** on **DBT (Data Build Tool)** from scratch. Learn DBT Core, DBT Models, DBT Seeds, DBT Snapshots, DBT Tests, Jinja Macros, Deployment, and CI/CD workflows. The tutorial is designed for data engineers, analysts, and anyone looking to master modern data transformation tools.

🔗 **YouTube Video:** [DBT - The Ultimate Guide | With CI/CD](https://youtu.be/your-video-id)  
👨‍💻 **Instructor:** [Ansh Lamba](https://www.youtube.com/@anshlambajsr)  

---

## 🎯 What You'll Learn  
- ✅ **DBT Fundamentals** – Core concepts, architecture, and why DBT is essential.  
- ✅ **Environment Setup** – Python, Git, UV, VS Code, Databricks, and DBT adapters.  
- ✅ **DBT Project Structure** – Models, sources, seeds, snapshots, tests, and macros.  
- ✅ **DBT Models** – Building Bronze, Silver, and Gold layers with medallion architecture.  
- ✅ **DBT Tests** – Generic tests, singular tests, and custom generic tests.  
- ✅ **Jinja & Macros** – Dynamic SQL, loops, conditionals, and reusable templates.  
- ✅ **Snapshots** – Slowly Changing Dimensions (SCD Type 2) implementation.  
- ✅ **Deployment & CI/CD** – Environment management, target configurations, and automated workflows.  

---

## 📂 Repository Structure  
```bash
dbt-project/
├── models/                 # DBT models (Bronze, Silver, Gold layers)
│   ├── bronze/            # Raw data ingestion
│   ├── silver/            # Transformed data
│   └── gold/              # Business-ready aggregates
├── sources/               # Source definitions
├── seeds/                 # Static data (CSV files)
├── snapshots/             # SCD Type 2 implementations
├── tests/                 # Data tests (generic & singular)
├── macros/                # Jinja macros for reusability
├── analysis/              # Ad-hoc queries (not part of DAG)
├── target/                # Compiled SQL & logs
├── dbt_project.yml        # Project configuration
├── profiles.yml           # Connection profiles (dev/prod)
└── README.md              # Project documentation
```

---

## ⚙️ Setup Instructions  

### 1️⃣ **Prerequisites**  
- Python 3.12+  
- Git  
- UV (Modern Python package manager)  
- VS Code with DBT Power User extension  
- Databricks account (Free Edition)  

### 2️⃣ **Installation**  
```bash
# Clone the repository
git clone https://github.com/anshlambagit/AnshLamba.git
cd dbt-masterclass

# Create virtual environment & install dependencies
uv init
uv sync
uv add dbt-core dbt-databricks

# Initialize DBT project
dbt init
```

### 3️⃣ **Configure Connections**  
Update `profiles.yml` with your Databricks credentials:  
```yaml
dbt_tutorial:
  target: dev
  outputs:
    dev:
      type: databricks
      host: <your-databricks-host>
      http_path: <http-path>
      token: <access-token>
      catalog: dbt_tutorial_dev
      schema: default
```

### 4️⃣ **Run DBT Commands**  
```bash
# Test connection
dbt debug

# Build all models
dbt build

# Run specific models
dbt run --select models/bronze/

# Run tests
dbt test

# Create snapshots
dbt snapshot

# Seed data
dbt seed
```

---

## 🚀 CI/CD Deployment  
Deploy to different environments (dev/prod) using target configurations:  
```bash
# Deploy to production
dbt build --target prod
```

### **Environment Variables**  
Use `target.catalog` and `target.schema` in configurations:  
```yaml
# In dbt_project.yml
models:
  dbt_tutorial:
    bronze:
      +materialized: table
      +schema: "{{ target.schema }}_bronze"
```

---

## 📊 Example: Building a Silver Layer Model  
```sql
-- models/silver/sales_info.sql
{{ config(materialized='table', schema='silver') }}

WITH sales AS (
    SELECT sales_id, product_sk, gross_amount, payment_method
    FROM {{ ref('bronze_sales') }}
),
products AS (
    SELECT product_sk, product_category
    FROM {{ ref('bronze_products') }}
),
customers AS (
    SELECT customer_sk, gender
    FROM {{ ref('bronze_customers') }}
)
SELECT 
    s.sales_id,
    p.product_category,
    c.gender,
    s.gross_amount,
    {{ multiply('unit_price', 'quantity') }} AS calculated_amount
FROM sales s
JOIN products p ON s.product_sk = p.product_sk
JOIN customers c ON s.customer_sk = c.customer_sk
```

---

## 🧪 Testing Examples  
### **Generic Tests** (`schema.yml`)  
```yaml
version: 2
models:
  - name: bronze_sales
    columns:
      - name: sales_id
        tests:
          - unique
          - not_null
      - name: gross_amount
        tests:
          - accepted_values:
              values: ['> 0']
```

### **Singular Test** (`tests/non_negative.sql`)  
```sql
SELECT * 
FROM {{ ref('bronze_sales') }}
WHERE gross_amount < 0 OR net_amount < 0
```

---

## 🔄 Snapshots for SCD Type 2  
```yaml
# snapshots/gold_items.yml
version: 2
snapshots:
  - name: gold_items
    source: {{ ref('source_gold_items') }}
    config:
      schema: gold
      database: {{ target.catalog }}
    unique_key: id
    strategy: timestamp
    updated_at: update_date
    dbt_valid_to:
      value: '9999-12-31'
```

---

## 🤝 Contributing  
Contributions are welcome! Please follow these steps:  
1. Fork the repository  
2. Create a feature branch (`git checkout -b feature/awesome-feature`)  
3. Commit changes (`git commit -m 'Add awesome feature'`)  
4. Push to branch (`git push origin feature/awesome-feature`)  
5. Open a Pull Request  

---

## 📜 License  
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgments  
Special thanks to the amazing data community for their support!  
📺 **Watch the full tutorial:** [YouTube Video](https://youtu.be/your-video-id)  
📚 **More tutorials:** [Git & GitHub](https://youtu.be/your-video-id) | [PySpark](https://youtu.be/your-video-id) | [Azure Data Projects](https://youtu.be/your-video-id)  

---

## ⭐ Support  
If you found this helpful:  
- 📺 **Subscribe** to [Ansh Lamba's YouTube Channel](https://youtube.com/@anshlambajsr)  
- ⭐ **Star** this repository  
- 🔗 **Share** with your network  
- 💬 **Leave feedback** in the comments  

---

## 📬 Connect  
- **LinkedIn:** [Ansh Lamba](https://linkedin.com/in/ansh-lamba)  
- **Telegram:** [DataFam Community](https://t.me/anshlambadatafam)  
- **Email:** anshlambacollab@gmail.com  

---

**Happy Modeling! 🚀**  

--- 

*This README is based on the comprehensive DBT tutorial by Ansh Lamba. All credits for the content and instruction go to the original creator.*
