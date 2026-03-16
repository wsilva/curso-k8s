## Listando pods

Listando pods em todos os namespaces:

```bash
kubectl get pods --all-namespaces
```{{}}

Somente do namespace `kube-system`

```bash
kubectl get pod --namespace kube-system
```{{}}

Listando com output com mais detalhes

```bash
kubectl get pod -n kube-system -o wide
```{{}}

Listando com output filtrando pelo campo nome usando jsonpath:

```bash
kubectl get po -o jsonpath='{.items[*].metadata.name}'
```{{}}
