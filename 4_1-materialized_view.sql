-- Create target table
CREATE TABLE iot_readings_daily (
    device_id string NOT NULL,
    day Date NOT NULL,
    avg_water_temperature float64 NOT NULL COMMENT 'in celcius',
    min_water_temperature float64 NOT NULL COMMENT 'in celcius',
    max_water_temperature float64 NOT NULL COMMENT 'in celcius',
    ma_water_temperature float64 NOT NULL COMMENT 'moving average in celcius',
) ENGINE = MergeTree

-- Create materialized view
CREATE MATERIALIZED VIEW (
    SELECT
        device_id,
        toDate(date) as day,
        avg(water_temperature) as avg_water_temperature
        min(water_temperature) as min_water_temperature
        max(water_temperature) as max_water_temperature
        avg(water_temperature) OVER () as ma_water_temperature
    FROM iot_readings
)