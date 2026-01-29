# Cost Optimized Big Data Pipeline

This project demonstrates a **cost-optimized data pipeline** using **Databricks** and **PySpark**.  
The pipeline is designed to simulate a real-world ETL workflow with large datasets.

## Project Overview
- Generates **synthetic dataset** of 100,000 orders with products, categories, and amounts.
- Performs **data filtering and transformation**.
- Computes **aggregated summaries**: total and average amount per category.
- Allows results to be **downloaded locally** as CSV/Excel for reporting.

## Steps in the Pipeline
1. **Data Generation**  
   Creates a synthetic dataset with columns: `order_id`, `product`, `category_id`, `year`, `amount`.

2. **Transformation**  
   Filters orders with meaningful amounts and selects relevant columns.

3. **Aggregation**  
   Groups data by `category_id` and calculates:
   - Total amount (`total_amount`)  
   - Average amount (`avg_amount`)  

4. **Export**  
   Converts the summary to Pandas and saves as:
   - CSV: `cost_optimized_summary.csv`
   - Excel: `cost_optimized_summary.xlsx`

## Tools & Technologies
- Databricks (Serverless Compute)  
- PySpark  
- Pandas  
- Excel/CSV export  

## Notes
- The pipeline is fully **serverless-compatible**. No caching/persisting is used to avoid unsupported operations.
- The notebook is ready to run **end-to-end** from top-to-bottom.
