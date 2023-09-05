# Descripcion
Api gateway el cual es la puerta de entrada para todas las peticiones del cliente web.

# Requerimientos
- Docker
- Si no tiene docker es necesario java 17.
- Eureka desplegado.

## Despliegue
Podemos correr eureka facilmente de dos maneras:

- Con gradle (sin instalacion):
1. Use el siguiente comando en la raiz del proyecto, no necesita compilar el codigo fuente ni tener gradle instalado:
```shell
./gradlew bootRun
```

- Con docker:

1. Creamos y corremos el contenedor, importante exponer el puerto 8090:
```shell
docker run -p 8090:8090 --name <container_name> jhojanlopez/inventory_system_gateway
```

2. Si eureka no esta en la misma red virtual agregar las varibles de entorno de acuerdo a su red:
```shell
docker run -p 8090:8090 -e HOST_EUREKA=<eureka_host> --name <container_name> jhojanlopez/inventory_system_gateway
```


