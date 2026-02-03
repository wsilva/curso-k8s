## Multicontainer pods

<br>

Em um terminal vamos rodar o comando de watch para listar `pods` e `configmaps`

```plain
watch -n 1 "kubectl get pod,configmap --output=wide"
```{{exec}}

<br>

Em outro terminal vamos criar o configmap

```plain
kubectl apply -f \
https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/master/pod/pod-multicontainer-configmap.yaml
```{{exec}}

<br>

E vamos criar o pod

```plain
kubectl apply -f \
https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/master/pod/pod-multicontainer.yaml
```{{exec}}

> Na listagem de pods aparece 2/2 ao invés de 1/1, é a qtde de containers.

<br>

E vamos criar um port forward

```plain
kubectl port-forward pod/phpfpm-nginx 9999:80 --address 0.0.0.0 &
```{{exec}}

<br>

Vamos acessar a porta do pod [nesse link]({{TRAFFIC_HOST1_9999}}).
