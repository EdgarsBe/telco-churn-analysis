Q1: What is the overall churn rate?

SELECT
  COUNT(*) AS customers,
  COUNTIF(Churn) AS churned,
  ROUND(100 * COUNTIF(Churn) / COUNT(*), 1) AS churn_rate_pct  
FROM `telcocustomerchurn-515419.churn.customer`;