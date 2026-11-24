Q2: Which contract types lose the most customers?

SELECT
  Contract,
  COUNT(*) AS customers,
  COUNTIF(Churn) AS churned,
  ROUND(100 * COUNTIF(Churn) / COUNT(*), 1) AS churn_rate_pct
FROM `telcocustomerchurn-515419.churn.customer`
GROUP BY Contract
ORDER BY churn_rate_pct DESC;