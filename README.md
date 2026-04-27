# Bybit Crypto ETL Pipeline

Полный ETL-стек: загрузка котировок с Bybit → ClickHouse → визуализация в Superset.

## 🛠 Стек

- Apache Airflow 2.10

- ClickHouse 25.1

- Apache Superset

- Docker Compose

## Запуск (одной командой)

```bash

git clone https://github.com/YOUR_USERNAME/bybit-etl

cd bybit-etl

cp .env.example .env

echo "AIRFLOW_UID=$(id -u)" > .env

docker compose up -d

```

Подождите 2-3 минуты пока всё поднимется.

## Креды

- **Airflow**: http://localhost:18080 (airflow / airflow)

- **Superset**: http://localhost:8088 (admin / admin)

- **ClickHouse HTTP**: http://localhost:18123 (airflow / airflow)

## Использование

1. Открой Airflow UI → найди DAG `ParseBybitKline` → включи (toggle)

2. Дождись первого запуска или нажми ▶️

3. В Superset подключи ClickHouse: `clickhouse://airflow:airflow@clickhouse:8123/default`

