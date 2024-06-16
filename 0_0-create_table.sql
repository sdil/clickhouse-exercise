-- Create iot_readings table
CREATE TABLE iot_readings (
    device_id String NOT NULL,
    datetime DateTime NOT NULL,
    water_temperature Float32 NOT NULL COMMENT 'in celcius',
    ph float64 NOT NULL,
    salinity Float32 NOT NULL,
) ENGINE = MergeTree
