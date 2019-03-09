Some helpful docker commands to remember:

### rebuild the docker file
docker build . -t airflow
    
### run the docker image after building
docker run -d -p 8080:8080 --rm --name airflow_container airflow

### manually trigger a specific dag
docker exec airflow_container airflow trigger_dag
docker exec airflow_container airflow backfill example_bash_operator -s 2015-01-01 -e 2015-01-02

### cleanup and shut down the container 
docker kill airflow_container