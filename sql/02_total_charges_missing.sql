Data check: how many TotalCharges values are blank or unusable?

SELECT COUNT(*) AS missing_total_charges
FROM `telcocustomerchurn-515419.churn.customer`
WHERE SAFE_CAST(TotalCharges AS FLOAT64) IS NULL;