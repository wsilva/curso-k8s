## Atualizando pod

Alterando mais uma vez o yaml do pod.

- em `spec.containers.image` mudamos de `wfsilva/demoapp:v1` para `yabadabadoo`
- em `metadata.name` mudamos de `outrademo` para `vaidarruim`

```yaml{4,10}
apiVersion: v1
kind: Pod
metadata:
  name: vaidarruim # era outrademo
  labels:
    chave: novovalor # era valor
spec:
  containers:
  - name: web
    image: yabadabadoo # era wfsilva/demoapp:v1
    ports:
      - containerPort: 8080
```

<br>

Vamos criar novo pod

```plain
kubectl apply -f /root/pod.yaml
```{{exec}}

<br>

Olhando o terminal 1 vemos o status em `ImagePullBackOff`

No terminal 2 vamos descrevendo o pod

```plain
kubectl describe pod vaidarruim
```{{exec}}

<br>

Filtrando pelo Status

```plain
kubectl describe pod vaidarruim | grep Status
```{{exec}}

<br>

Filtrando pelas condições

```plain
kubectl describe pod vaidarruim | grep Conditions -A 5
```{{exec}}

<br>

Filtrando pelos eventos

```plain
kubectl describe pod vaidarruim | grep Events -A 15
```{{exec}}


## Logs de um pod

Para ver os logs de um pod podemos usar o subcomando `logs`

```plain
kubectl logs -f meu-podinho
```{{exec}}
