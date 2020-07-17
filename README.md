# django-docker

## Using django with mysql-docker

MySQL Docker: https://github.com/leonidlezner/mysql-docker

DB configuration for Django:

```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql', 
        'NAME': 'NAME OF YOUR DB',
        'USER': 'root',
        'PASSWORD': 'root',
        'HOST': 'host.docker.internal',
        'PORT': '3306',
    }
}
```
