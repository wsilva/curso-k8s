## Listando namespaces

Listando no formato `json`:

```bash
kubectl get namespaces --output json
```{{}}

Podemos listar somente o namespace `default` em formato `json`

```bash
kubectl get ns default -o json
```{{}}

> Note o subcomando curto `ns` e parâmetro output `-o` curto também.
