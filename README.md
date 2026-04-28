# Bybit Crypto ETL Pipeline

Полный ETL-стек: загрузка котировок с Bybit → ClickHouse → визуализация в Superset.

## Стек

- Apache Airflow 2.10
- ClickHouse 25.1
- Apache Superset
- Docker Compose

## Запуск

```bash
git clone https://github.com/YOUR_USERNAME/bybit-etl
cd bybit-etl
echo "AIRFLOW_UID=$(id -u)" > .env
docker compose up -d
```


## Креды

- **Airflow:** http://localhost:18080 (airflow / airflow)
- **Superset:** http://localhost:8088 (admin / admin)
- **ClickHouse HTTP:** http://localhost:18123 (airflow / airflow)

## Использование

1. Открой Airflow UI → найди DAG `ParseBybitKline` → включи
2. В Superset подключи ClickHouse: **Settings → Database Connections → + Database**, выбери из списка **ClickHouse Connect** и заполни:
   - HOST: `clickhouse`
   - PORT: `8123`
   - DATABASE: `default`
   - USERNAME: `airflow`
   - PASSWORD: `airflow`
3. Создай датасет на таблицу `TickerPriceUSDT` или используй SQL запрос ниже как виртуальный датасет

## SQL для дашборда

Пример SQL запроса для виртуального датасета в Superset лежит в файле [`superset/queries/dashboard_query.sql`](superset/queries/dashboard_query.sql). Скопируй его в Superset при создании датасета.

## Дашборд

<img width="2553" height="1065" alt="image" src="https://github.com/user-attachments/assets/ee12c20e-0268-40d9-8137-e5c2496da191" />

