## Listando namespaces

Listando no formado `yaml`:

```plain
kubectl get namespaces --output yaml
```{{}}

Podemos listar somente o namespace `default` em formato `yaml`

```plain
kubectl get ns default -o yaml
```{{}}

> Note o subcomando curto `ns` e parâmetro output `-o` curto também.
