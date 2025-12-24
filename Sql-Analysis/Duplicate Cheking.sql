SELECT
  COUNT(*) AS total_rows,
  COUNT(DISTINCT CONCAT(
    CAST(is_canceled AS STRING),
    CAST(lead_time AS STRING),
    arrival_date_year,
    arrival_date_month,
    arrival_date_day_of_month,
    hotel,
    customer_type,
    reservation_status_date
  )) AS unique_rows,
  COUNT(*) - COUNT(DISTINCT CONCAT(
    CAST(is_canceled AS STRING),
    CAST(lead_time AS STRING),
    arrival_date_year,
    arrival_date_month,
    arrival_date_day_of_month,
    hotel,
    customer_type,
    reservation_status_date
  )) AS duplicate_rows
FROM `hotel-analyst-476904.Datasethotel.data`;


SELECT
  COUNT(*) AS total_rows,
  COUNT(DISTINCT TO_JSON_STRING(t)) AS truly_unique_rows,
  COUNT(*) - COUNT(DISTINCT TO_JSON_STRING(t)) AS truly_duplicate_rows
FROM `hotel-analyst-476904.Datasethotel.data` AS t;

