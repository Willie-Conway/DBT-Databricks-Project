SELECT
    {{ multiply(10, 50) }} AS test_col
FROM 
    {{ ref('bronze_sales') }}