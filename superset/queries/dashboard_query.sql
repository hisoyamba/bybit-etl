-- Основной запрос для дашборда
-- Использует argMax для получения актуальных значений из ReplacingMergeTree

SELECT 
    ticker,
    time,
    argMax(close, dt_load) AS close,
    argMax(volume, dt_load) AS volume,
    close * volume AS cash
FROM default.TickerPriceUSDT
GROUP BY ticker, time
ORDER BY ticker, time;
