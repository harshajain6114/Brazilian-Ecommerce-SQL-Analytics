# Brazilian E-Commerce SQL Analysis Project

## Project Overview

Comprehensive business intelligence analysis of Brazilian e-commerce data using advanced SQL techniques. This project demonstrates end-to-end data analysis capabilities including customer segmentation, revenue optimization, and operational performance evaluation.

## Business Objectives

- Segment customers based on purchasing behavior for targeted marketing strategies
- Analyze revenue trends and identify growth opportunities  
- Evaluate product category performance and market dynamics
- Assess geographic market penetration and expansion opportunities
- Measure operational efficiency across different regions

## Dataset Information

**Source:** Brazilian E-Commerce Public Dataset by Olist (Kaggle)  
**Time Period:** September 2016 - October 2018  
**Size:** 99,441 orders with 112,650 order items  
**Tables:** 9 interconnected tables including orders, customers, products, sellers, payments, and reviews  
**Geographic Coverage:** All 27 Brazilian states  

## Technical Implementation

### Database Management
- SQLite database implementation with proper indexing
- Data integrity validation across multiple table relationships
- Efficient query optimization for large dataset processing

### Advanced SQL Techniques Applied
- Common Table Expressions (CTEs) for complex calculations
- Window functions for advanced analytics (LAG, LEAD, NTILE, ROW_NUMBER)
- Multi-table joins with performance optimization
- Date functions for time-series analysis
- Subqueries and correlated subqueries for nested analysis
- CASE statements for business logic implementation

### Business Intelligence Methods
- RFM Analysis (Recency, Frequency, Monetary) for customer segmentation
- Cohort analysis for customer retention measurement
- Customer Lifetime Value calculation
- Month-over-month growth rate analysis
- Geographic performance benchmarking
- Product category performance evaluation

## Analysis Components

### Customer Analytics
- Customer segmentation using RFM methodology
- Identification of high-value customer segments
- Customer retention and churn analysis
- Purchase behavior pattern analysis

### Revenue Analysis  
- Monthly and quarterly revenue trend analysis
- Growth rate calculations with statistical significance
- Seasonal pattern identification
- Average order value progression

### Product Performance
- Category-wise revenue contribution analysis
- Product popularity and demand patterns
- Cross-selling opportunity identification
- Market share analysis by category

### Geographic Analysis
- State-wise performance evaluation
- Market penetration assessment
- Regional growth opportunity identification
- Logistics efficiency by geography

### Operational Metrics
- Delivery performance analysis
- Payment method preferences and effectiveness
- Customer satisfaction correlation with operational metrics
- Supply chain efficiency indicators

## File Structure

```
├── queries/
│   ├── 01_data_exploration.sql
│   ├── 02_customer_segmentation.sql
│   ├── 03_revenue_analysis.sql
│   ├── 04_product_analysis.sql
│   ├── 05_geographic_analysis.sql
│   └── 06_operational_metrics.sql
├── reports/
│   └── business_insights_report.md
├── results/
│   ├── customer_segments.csv
│   ├── monthly_revenue.csv
│   └── top_products.csv
└── README.md
```

## Key Deliverables

### SQL Query Portfolio
Six comprehensive SQL scripts demonstrating advanced analytical capabilities and business intelligence development.

### Business Intelligence Report
Detailed analysis report with actionable insights and strategic recommendations based on data findings.

### Performance Metrics
Quantified business KPIs including customer lifetime value, retention rates, revenue growth patterns, and operational efficiency metrics.

## Business Impact

This analysis provides a foundation for data-driven decision making in e-commerce operations including:
- Customer acquisition and retention strategy development
- Product portfolio optimization
- Geographic expansion planning
- Operational efficiency improvements
- Revenue forecasting and growth planning

## Technical Skills Demonstrated

- Advanced SQL query development and optimization
- Database design and relationship management
- Business intelligence and analytics
- Customer behavior analysis
- Performance metrics development
- Data storytelling and insight generation
- Statistical analysis and trend identification

## Tools and Technologies

- Database: SQLite with DB Browser interface
- Query Language: SQL with advanced functions
- Data Processing: Complex analytical queries
- Documentation: Markdown for professional reporting
- Version Control: Git for project management

## Project Outcomes

The analysis delivers actionable business insights through systematic data exploration and statistical analysis, demonstrating proficiency in translating complex datasets into strategic business recommendations.

## Repository Access

All SQL queries, analysis results, and documentation are available in this repository for review and validation of analytical methodologies and business conclusions.
