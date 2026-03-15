-- INPUT:
-- user_cohort
-- user_activity
--
-- OUTPUT:
-- cohort_activity
--
-- Purpose:
-- Combine cohort assignment with activity tracking
-- and calculate lifecycle stage (cohort_age).

CREATE OR REPLACE VIEW cohort_activity AS
SELECT
    c.user_id,
    c.cohort_month,
    a.activity_month,

    DATE_PART(
        'month',
        AGE(a.activity_month, c.cohort_month)
    ) AS cohort_age

FROM user_cohort c
JOIN user_activity a
    ON c.user_id = a.user_id

WHERE a.activity_month >= c.cohort_month;
