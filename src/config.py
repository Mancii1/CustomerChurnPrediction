from pathlib import Path

#Project Root
BASE_DIR = Path(__file__).resolve().parent.parent

#Data Paths
RAW_DATA_DIR = BASE_DIR / 'data' / 'raw' / 'Telco_customer_churn.xlsx'
PROCESSED_DATA_DIR = BASE_DIR / 'data' / 'processed' / 'modelling_dataset.csv'

#Database Path'
DATABASE_PATH = BASE_DIR / 'churn.db'

#SQL Paths
SCHEMA_SQL_PATH = BASE_DIR / 'sql' / 'schema.sql'
FEATURE_SQL_PATH = BASE_DIR / 'sql' / 'feature_engineering.sql'