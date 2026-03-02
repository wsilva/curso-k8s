## Multicontainer pods

Mostrando os logs de cada container

```plain
kubectl logs -f phpfpm-nginx --container=nginx
```{{}}

```plain
kubectl logs -f phpfpm-nginx --container=php
```{{}}

Para adicionar um processo e "acessar" o container segue a mesma lógica

```plain
kubectl exec -it phpfpm-nginx --container=nginx -- ash
```{{}}

```plain
kubectl exec -it phpfpm-nginx --container=php -- ash
```{{}}

