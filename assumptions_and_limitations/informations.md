# Assumptions

User activity is defined based on recorded product interaction events (app_open, view_product, add_to_cart, purchase).

The purchase funnel is assumed to follow the sequence:
app_open → view_product → add_to_cart → purchase.

Revenue includes only completed purchase transactions recorded in the purchases table.

Users are assigned to experiment variants (A or B) using the ab_variant field and remain in the same variant throughout the observation period.

Conversion uplift and estimated revenue impact assume that experiment results scale linearly when Variant B is deployed to the full user base.

Cohorts are defined by user registration month, and retention is measured at monthly intervals.

Retention assumes that any recorded event indicates active user engagement.

--- 

# Limitations

The dataset is synthetically generated and may not fully reflect real-world user behavior patterns.

The analysis includes a limited set of behavioral signals and does not capture session duration, marketing attribution, or user engagement depth.

Some users may enter the funnel at later stages, which can create inconsistencies between funnel steps.

Retention for the most recent cohorts may be underestimated due to incomplete future activity data.

Estimated revenue impact from the A/B experiment does not account for external factors such as seasonality, promotions, or market changes.

Retention analysis is performed at monthly granularity, which does not capture short-term user behavior within the month.

The project demonstrates how product interaction data can be transformed into actionable insights supporting product and growth decisions.
