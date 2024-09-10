# ERP Docker Compose

This repository contains the docker-compose file for the ERP project and with a Nginx server. The ERP project is a web application that is used to manage the resources of a company. The project is built using the Frappe framework.

## Requirements

1. Docker - [Install Docker](https://docs.docker.com/get-docker/)
2. Docker Compose - [Install Docker Compose](https://docs.docker.com/compose/install/)
3. Git - [Install Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Installation

1. Clone the repository and navigate to the directory

```bash
git clone https://github.com/ifeLight/erp-docker.git
cd erp-docker
```

2. Run the following command to start the docker containers

```bash
docker compose -f main.yml up -d
```

3. Open the browser and navigate to `http://localhost:80`

4. To uninstall the containers run the following command

```bash
docker compose -f main.yml down
```

### SSL Certificates

To install SSL certificates, you need to use the `certbot` image. The `certbot` image is used to generate the SSL certificates. The certificates are stored in the `certbot` volume. The certificates are then copied to the `nginx` volume. The `nginx` volume is mounted to the `nginx` container. The `nginx` container is used to serve the web application. Ensure the domain name is pointing to the server IP address, by creating an A record in the DNS settings of the domain name provider.

1. In the `nginx.conf` file, replacing example.org` to the domain name of the website and save the file.

2. Run the following command to generate the SSL certificates

```bash
docker compose -f main.yml run certbot certonly --webroot --webroot-path=/var/www/certbot -d example.org -d www.example.org
```

Replace `example.org` with the domain name of the website.

3. After the certificates is obtained. Edit the `nginx.conf` file and replace the `example.org` with the domain name of the website and uncomment the SSL certificates configuration. Save the file. Then rebuild the `nginx` container by running the following command

```bash
docker compose -f main.yml -d --no-deps --build web
```

4. To renew the SSL certificates, run the following command

```bash
docker compose -f main.yml run certbot renew
```

## License

This project is licensed under the MIT License
