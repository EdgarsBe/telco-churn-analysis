Q4: How much monthly revenue is lost to churn?

SELECT
  ROUND(SUM(MonthlyCharges), 0) AS total_monthly_revenue,
  ROUND(SUM(IF(Churn, MonthlyCharges, 0)), 0) AS lost_to_churn,
  ROUND(100 * SUM(IF(Churn, MonthlyCharges, 0)) / SUM(MonthlyCharges), 1) AS lost_pct
FROM `telcocustomerchurn-515419.churn.customer`;