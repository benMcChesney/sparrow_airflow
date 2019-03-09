docker run -d -p 8080:8080 --rm --name airflow_container airflow
docker exec airflow_container airflow trigger_dag
docker kill airflow_container