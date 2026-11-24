Q5: Is the payment method effect just a contract effect?

SELECT
  Contract,
  PaymentMethod,
  COUNT(*) AS customers,
  ROUND(100 * COUNTIF(Churn) / COUNT(*), 1) AS churn_rate_pct
FROM `telcocustomerchurn-515419.churn.customer`
GROUP BY Contract, PaymentMethod
ORDER BY Contract, churn_rate_pct DESC;