# ERP Docker Compose

This repository contains the docker-compose file for the ERP project and with a Nginx server. The ERP project is a web application that is used to manage the resources of a company. The project is built using the Frappe framework.

## Requirements

1. Docker - [Install Docker](https://docs.docker.com/get-docker/)
2. Docker Compose - [Install Docker Compose](https://docs.docker.com/compose/install/)
3. Git - [Install Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Installation

1. Clone the repository
2. Run the following command to start the docker containers

```bash
docker-compose -f main.yml up -d
```

3. Open the browser and navigate to `http://localhost:80`
4. To uninstall the containers run the following command

```bash
docker-compose -f main.yml down
```

## License

This project is licensed under the MIT License
