# DAX Measures Overview

This folder contains all DAX measures used in the Power BI dashboard.
The measures are organized into analytical groups reflecting the main areas of the product analytics workflow:

1. product_metrics.dax
2. funnel_metrics.dax
3. cohort_metrics.dax
4. experiment_metrics.dax
5. segmentation_metrics.dax

Each group supports a different aspect of product performance analysis.

---

## 1. product_metrics.dax

Core business performance metrics used in the Product Overview dashboard.

Measures included:

- Total Users
- Total Purchases
- Total Revenue
- ARPU
- ARPPU
- Revenue Trend

These metrics provide a high-level overview of product performance and monetization efficiency.

They are used to monitor:
- user growth
- purchasing activity
- overall product revenue
- revenue generated per user
  
---

## 2. funnel_metrics.dax

Measures used to analyze user behavior across the product funnel.

Funnel stages analyzed in the project:
- App Open
- View Product
- Add To Cart
- Purchase


Measures included:
- Users App Open
- Users View Product
- Users Add To Cart
- Users Purchase
- CR View → Cart
- CR Cart → Purchase
- Overall Conversion
- Drop-off Rate

These measures help identify where users drop off during the purchase journey and highlight opportunities for UX and conversion optimization.

---

## 3. cohort_metrics.dax

Measures used for cohort retention analysis.

Cohort analysis tracks user engagement over time based on the month of user acquisition.

Measures included:
- Active Users
- Cohort Retention %


These measures enable:
- retention heatmap visualization
- lifecycle engagement analysis
- long-term product stickiness evaluation

---

## 4. experiment_metrics.dax

Measures used to evaluate the results of the A/B experiment conducted in the project.

The experiment compares two product variants:
- Variant A
- Variant B


Measures included:
- Users Variant
- Purchases Variant
- Revenue Variant
- Conversion Rate
- Conversion Uplift %
- Revenue Uplift %
- Estimated Revenue Impact


These metrics quantify the impact of product changes on:
- conversion performance
- revenue generation
- overall experiment success

---

## 5. segmentation_metrics.dax

Measures supporting user segmentation analysis.

These metrics are used in charts comparing user behavior across different groups.

Measures included:
- Users by Country
- Mobile Users
- Revenue by Device


These metrics allow analysis of how product performance varies by:
- geographic region
- device type
- user segments

Analytical Role of the DAX Layer

The DAX layer enables dynamic business metrics that respond to dashboard filters such as:
- Date
- Country
- Device
- Experiment Variant


Together with the SQL transformation layer, the DAX measures support:

✔ interactive analysis
✔ real-time KPI recalculation
✔ product funnel evaluation
✔ cohort lifecycle tracking
✔ experiment performance measurement
