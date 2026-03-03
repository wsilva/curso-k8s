## Comando apply

Primeiro vamos no terminal um, parar o comando `watch` com `ctrl+c`

Em seguida rodar:

```plain
watch kubectl get pods -o wide --show-labels
```{{exec}}

Voltamos para o terminal 2 e vamos alterar no arquivo o nome do pod de `demo` para `outrademo` em `metadata.name`

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

> Podemos usar o comando `vim` ou o comando `nano` para editar o arquivo `/root/pod.yaml`.

<details open>
  <summary>
    Vamos atualizar com o comando:
  </summary>

  ```plain
  kubectl apply -f /root/pod.yaml
  ```{{}}

</details>

Ele não atualiza, ele acaba criando outro pod porque o nome é identificador.

Mas podemos atualizar a label `.metadata.labels.chave` na linha 6

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

<details open>
  <summary>
    Vamos atualizar com o comando:
  </summary>

  ```plain
  kubectl apply -f /root/pod.yaml
  ```{{}}

  > Podemos atualizar também apenas rodando
  > 
  > ```plain
  > kubectl edit pod outrademo
  > ```{{}}
  >  
  > ou 
  >
  > ```plain
  > kubectl edit pod/outrademo
  > ```{{}}

</details>

Agora vemos os pods atualizados no `terminal 1`.
