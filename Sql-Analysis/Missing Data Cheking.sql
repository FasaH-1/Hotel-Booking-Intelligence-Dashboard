SELECT
  COUNT(*) AS total_rows,
  COUNTIF(hotel IS NULL OR hotel = '') AS missing_hotel,
  COUNTIF(country IS NULL OR country = '') AS missing_country,
  COUNTIF(children IS NULL) AS missing_children,
  COUNTIF(agent IS NULL OR agent = '') AS missing_agent,
  COUNTIF(company IS NULL OR company = '') AS missing_company,
  COUNTIF(reservation_status_date IS NULL OR reservation_status_date = '') AS missing_reservation_date
FROM `hotel-analyst-476904.Datasethotel.data`;

SELECT
  COUNTIF(CAST(children AS STRING) = 'NULL') AS string_null_children,
  COUNTIF(CAST(is_canceled AS STRING) = 'NULL') AS string_null_is_canceled,
  COUNTIF(CAST(lead_time AS STRING) = 'NULL') AS string_null_lead_time
FROM `hotel-analyst-476904.Datasethotel.data`;

SELECT
  reservation_status_date
FROM `hotel-analyst-476904.Datasethotel.data`
WHERE SAFE.PARSE_DATE('%d/%m/%Y', reservation_status_date) IS NULL;



