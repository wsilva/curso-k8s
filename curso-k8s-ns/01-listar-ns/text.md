## Listando namespaces

<br>

Singular

```plain
kubectl get namespace
```{{exec}}

<br>

Plural

```plain
kubectl get namespaces
```{{exec}}

<br>

Curto

```plain
kubectl get ns
```{{exec}}

<br>

Com labels

```plain
kubectl get namespaces --show-labels
```{{exec}}

<br>

Formato yaml

```plain
kubectl get namespaces --output yaml
```{{exec}}

<br>

Formato json

```plain
kubectl get namespaces --output json
```{{exec}}


Somente o namespace `default` em formato json

```plain
kubectl get ns default -o json
```{{exec}}

> Note o subcomando curto `ns` e parâmetro output `-o` curto também.
