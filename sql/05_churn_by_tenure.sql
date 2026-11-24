Q3: How does churn change with how long someone has been a customer?

SELECT
  CASE
    WHEN tenure <= 12 THEN '1. 0-12 months'
    WHEN tenure <= 24 THEN '2. 13-24 months'
    WHEN tenure <= 48 THEN '3. 25-48 months'
    ELSE '4. 49+ months'
  END AS tenure_group,
  COUNT(*) AS customers,
  ROUND(100 * COUNTIF(Churn) / COUNT(*), 1) AS churn_rate_pct
FROM `telcocustomerchurn-515419.churn.customer`
GROUP BY tenure_group
ORDER BY tenure_group;