## Listando namespaces

Listando no formato `json`:

```plain
kubectl get namespaces --output json
```{{}}

Podemos listar somente o namespace `default` em formato `json`

```plain
kubectl get ns default -o json
```{{}}

> Note o subcomando curto `ns` e parâmetro output `-o` curto também.
