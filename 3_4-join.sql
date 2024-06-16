-- Create site table
CREATE TABLE site (
    id String NOT NULL,
    location String NOT NULL,
    owner String NOT NULL,
) ENGINE = EmbeddedRocksDB PRIMARY KEY(id)

-- Create client table
