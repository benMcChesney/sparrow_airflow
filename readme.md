# Sparrow Airflow

Sparrow is codename for a data pipeline project. It implement airflow in a docker container to make the environment portable.

## Installation

Some helpful docker commands to remember:

### rebuild the docker file
```bash
docker build . -t airflow
```

### run the docker image after building
```bash
docker run -d -p 8080:8080 --rm --name airflow_container airflow
```

## Usage
### manually trigger a specific dag
```bash
docker exec airflow_container airflow trigger_dag
```

```bash
docker exec airflow_container airflow backfill example_bash_operator -s 2015-01-01 -e 2015-01-02
```

## Cleanup and Shutdown
### cleanup and shut down the container 
```bash
docker kill airflow_container
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)