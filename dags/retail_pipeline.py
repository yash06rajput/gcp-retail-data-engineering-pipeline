from datetime import datetime

from airflow import DAG
from airflow.providers.google.cloud.operators.dataproc import DataprocCreateBatchOperator

default_args = {
    "owner": "yash",
}

with DAG(
    dag_id="retail_data_pipeline",
    default_args=default_args,
    start_date=datetime(2026, 1, 1),
    schedule="@daily",
    catchup=False,
    tags=["retail", "gcp", "dataproc"],
) as dag:

    dataproc_etl = DataprocCreateBatchOperator(
        task_id="run_pyspark_etl",
        project_id="project-9b9048fb-abed-4f41-99e",
        region="asia-south1",
        batch={
            "pyspark_batch": {
                "main_python_file_uri": (
                    "gs://ey-data-engineering-project-9b9048fb-abed-4f41-99e/"
                    "pyspark/etl.py"
                ),
            },
        },
        batch_id="retail-etl-batch",
    )