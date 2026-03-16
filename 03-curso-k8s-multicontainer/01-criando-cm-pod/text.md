## Multicontainer pods

Em um terminal vamos rodar o comando de watch para listar `pods` e `configmaps`

```bash
watch -n 1 "\
    kubectl get \
        pod,configmap \
        --output=wide"
```{{}}

<br>

Em outro terminal vamos criar o configmap

```bash
kubectl apply -f \
https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/master/pod/pod-multicontainer-configmap.yaml
```{{}}

E vamos criar o pod

```bash
kubectl apply -f \
https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/master/pod/pod-multicontainer.yaml
```{{}}

> Na listagem de pods aparece 2/2 ao invés de 1/1, é a qtde de containers.

E vamos criar um port forward

```bash
kubectl port-forward \
    pod/phpfpm-nginx \
    9999:80 \
    --address 0.0.0.0 &
```{{}}

Vamos acessar a porta do pod [nesse link]({{TRAFFIC_HOST1_9999}}).
