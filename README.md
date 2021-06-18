# Docker, nginx, Django, DRF, Vue E-Commerce Project

![Docker, nginx, Django, DRF, Vue E-Commerce Project](docs/django-eshop.gif)
A basic example of a dockerized Django e-commerce app using Django Rest Framework, nginx, Stripe and VueJS.

## Installation

To handle the payments, we implement Stripe. More infos here https://stripe.com/docs/testing
Add your Stripe secret key into the ["setting.py"](backend/backend/settings.py) file and your stripe public key into the ["Checkout.vue"](frontend/src/views/Checkout.vue) file.

For local development, run the following command:

```bash
docker-compose -f docker-compose.dev.yml up --build
```

Create a superuser:

```bash
docker ps # Get container ID
docker exec -it <container ID> /bin/bash
./backend/manage.py createsuperuser
```

For production, rename "docker-compose.yml.example" to "docker-compose.yml", generate a secret key:

```bash
python -c 'import secrets; print(secrets.token_urlsafe(38))'
```

add it to "docker-compose.yml" and run the following command:

```bash
docker-compose -f docker-compose.yml up --build
```
