## Listanado namespaces

<br>

Normal

```plain
kubectl get namespace
```{{exec}}

<br>

Plural

```plain
kubectl get namespaces
```{{exec}}

<br>

Short

```plain
kubectl get ns
```{{exec}}

<br>

Labels

```plain
kubectl get namespaces --show-labels
```{{exec}}

<br>

Yaml

```plain
kubectl get namespaces --output yaml
```{{exec}}

<br>

Json

```plain
kubectl get namespaces --output json
```{{exec}}


## Um namespace só em json

```plain
kubectl get ns default -o json
```{{exec}}

> Note o subcomando curto `ns` e parâmetro output `-o` curto também.
