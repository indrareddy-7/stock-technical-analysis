-- Creating database
CREATE DATABASE IF NOT EXISTS stock_db;
USE stock_db;

-- Creating main table
CREATE TABLE stock_prices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    symbol VARCHAR(10),
    open_price DECIMAL(10,2),
    close_price DECIMAL(10,2),
    high_price DECIMAL(10,2),
    low_price DECIMAL(10,2),
    volume BIGINT,
    daily_return DECIMAL(10,5),
    trend VARCHAR(10)
);

-- Index for faster querying
CREATE INDEX idx_symbol_date ON stock_prices(symbol, date);

select *from stock_prices;

select symbol, count(*) from stock_prices
group by symbol;

