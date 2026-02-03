## Listando pods

Assim como namespaces também podemos usar a versão curta, longa, singular e plural

<br>

Singular

```plain
kubectl get pod
```{{exec}}

<br>

Plural

```plain
kubectl get pods
```{{exec}}

<br>

Curto

```plain
kubectl get po
```{{exec}}

<br>

Todos os namespaces

```plain
kubectl get pods --all-namespaces
```{{exec}}

<br>

Somente o namespace kube-system

```plain
kubectl get pod --namespace kube-system
```{{exec}}

<br>

Mais detalhes

```plain
kubectl get pod -n kube-system -o wide
```{{exec}}

<br>

Formato jsonpath e filtrando pelo campo nome

```plain
kubectl get po --all-namespaces -o jsonpath='{.items[*].metadata.name}'
```{{exec}}

