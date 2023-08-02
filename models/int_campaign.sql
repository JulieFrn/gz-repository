
{{ config(
    materialized='table',
    partition_by={
      "field": "date_date",
      "data_type": "date",
      "granularity": "day"})}}

SELECT * FROM {{ ref('stg_adwords') }}
UNION ALL
SELECT * FROM {{ ref('stg_bing') }}
UNION ALL
SELECT * FROM {{ ref('stg_criteo') }}
UNION ALL
SELECT * FROM {{ ref('stg_facebook')}}