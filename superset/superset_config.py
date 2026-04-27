import os

SECRET_KEY = os.environ.get('SUPERSET_SECRET_KEY', 'CHANGE_ME_IN_PRODUCTION')
SQLALCHEMY_DATABASE_URI = 'sqlite:////app/superset_home/superset.db'

# Чтобы можно было подключаться к ClickHouse
PREVENT_UNSAFE_DB_CONNECTIONS = False
