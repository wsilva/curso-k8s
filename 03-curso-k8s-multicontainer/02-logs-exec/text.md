## Multicontainer pods

Mostrando os logs de cada container

```bash
kubectl logs -f phpfpm-nginx --container=nginx
```{{}}

```bash
kubectl logs -f phpfpm-nginx --container=php
```{{}}

Para adicionar um processo e "acessar" o container segue a mesma lógica

```bash
kubectl exec -it phpfpm-nginx --container=nginx -- ash
```{{}}

```bash
kubectl exec -it phpfpm-nginx --container=php -- ash
```{{}}

