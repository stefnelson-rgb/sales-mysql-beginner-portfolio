# Warehouse design for Analysis

*Data Source:* KPIs are derived from a star-schema warehouse I designed and implemented.  
The warehouse integrates sales transactions, product details, and customer data to enable efficient reporting and analytics.

## fact table

**sales_fact**
  - order_id 
  - order_date 
  - customer_id 
  - product_id 
  - quantity 
  - revenue 

## Dimension tables

**dim_customers**
- customer_id
- customerName
- country

**dim_products**
- product_id 
- productName 
- productLine

