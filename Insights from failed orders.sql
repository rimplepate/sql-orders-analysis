SELECT
  CASE
    WHEN order_status_key = 4 AND is_driver_assigned_key = 0 THEN 'Cancelled before driver assigned'
    WHEN order_status_key = 4 AND is_driver_assigned_key = 1 THEN 'Cancelled after driver assigned'
    WHEN order_status_key = 9 THEN 'Rejected by system'
    ELSE 'Other'
  END AS failure_reason,
  COUNT(*) AS total_orders
FROM data_orders
WHERE order_status_key IN (4, 9)
GROUP BY failure_reason
ORDER BY total_orders DESC;
