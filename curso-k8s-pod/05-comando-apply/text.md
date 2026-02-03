## Comando apply

<br>

Primeiro vamos no terminal um, parar o comando `watch` com `ctrl+c`

<br>

Em seguida rodar

```plain
watch kubectl get pods -o wide --show-labels
```{{exec}}

<br>

Voltamos para o terminal 2 e vamos alterar o nome do pod de `demo` para `outrademo`

```yaml{4}
apiVersion: v1
kind: Pod
metadata:
  name: outrademo # era demo
  labels:
    chave: valor
spec:
  containers:
  - name: web
    image: wfsilva/demoapp:v1
    ports:
      - containerPort: 8080
```

E tentar atualizar com o comando:

```plain
kubectl apply -f /root/pod.yaml
```{{exec}}

<br>

Ele não atualiza. Mas podemos atualizar a label `.metadata.labels.chave` na linha 6

```yaml{6}
apiVersion: v1
kind: Pod
metadata:
  name: outrademo # era demo
  labels:
    chave: novovalor # era valor
spec:
  containers:
  - name: web
    image: wfsilva/demoapp:v1
    ports:
      - containerPort: 8080
```

<br>

E atualizar

```plain
kubectl apply -f /root/pod.yaml
```{{exec}}

<br>

Agora vemos os pods atualizados no terminal 1.
