## Listando pods

Listando pods em todos os namespaces:

```plain
kubectl get pods --all-namespaces
```{{}}

Somente do namespace `kube-system`

```plain
kubectl get pod --namespace kube-system
```{{}}

Listando com output com mais detalhes

```plain
kubectl get pod -n kube-system -o wide
```{{}}

Listando com output filtrando pelo campo nome usando jsonpath:

```plain
kubectl get po -o jsonpath='{.items[*].metadata.name}'
```{{}}
