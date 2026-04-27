CREATE DATABASE IF NOT EXISTS default;

CREATE TABLE IF NOT EXISTS default.TickerPriceUSDT
(
    ticker  String,
    open    Float64,
    high    Float64,
    low     Float64,
    close   Float64,
    volume  Float64,
    time    Datetime,
    dt_load Datetime
)
ENGINE = ReplacingMergeTree(dt_load)
ORDER BY (ticker, time)
SETTINGS index_granularity = 8192;
