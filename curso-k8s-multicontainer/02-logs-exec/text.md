## Multicontainer pods

Mostrando os logs de cada container

```plain
kubectl logs -f phpfpm-nginx --container=nginx
```{{exec}}

```plain
kubectl logs -f phpfpm-nginx --container=php
```{{exec}}

<br>

Para adicionar um processo e "acessar" o container segue a mesma lógica

```plain
kubectl exec -it phpfpm-nginx --container=nginx -- ash
```{{exec}}

```plain
kubectl exec -it phpfpm-nginx --container=php -- ash
```{{exec}}

