## Listando namespaces

Listando no formado `yaml`:

```bash
kubectl get namespaces --output yaml
```{{}}

Podemos listar somente o namespace `default` em formato `yaml`

```bash
kubectl get ns default -o yaml
```{{}}

> Note o subcomando curto `ns` e parâmetro output `-o` curto também.
