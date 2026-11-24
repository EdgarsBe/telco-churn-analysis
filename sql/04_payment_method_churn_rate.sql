Q2b: Which payment methods have the highest churn?

SELECT
  PaymentMethod,
  COUNT(*) AS customers,
  ROUND(100 * COUNTIF(Churn) / COUNT(*), 1) AS churn_rate_pct
FROM `telcocustomerchurn-515419.churn.customer`
GROUP BY PaymentMethod
ORDER BY churn_rate_pct DESC;