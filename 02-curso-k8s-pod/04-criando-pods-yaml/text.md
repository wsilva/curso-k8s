## Comando create

Criando um arquivo yaml para um novo pod chamado `demo` com o seguinte conteúdo:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: demo
  labels:
    chave: valor
spec:
  containers:
  - name: web
    image: wfsilva/demoapp:v1
    ports:
      - containerPort: 8080
```

<details open>
  <summary>
    Para criar o arquivo podemos executar:
  </summary>

  ```bash
  cat <<FIM | tee /root/pod.yaml
  apiVersion: v1
  kind: Pod
  metadata:
    name: demo
    labels:
      chave: valor
  spec:
    containers:
      - name: web
        image: wfsilva/demoapp:v1
        ports:
          - containerPort: 8080
  FIM
  ```{{}}

</details>

<details open>
  <summary>
    Para criar o pod com base no arquiv podemos executar:
  </summary>

  ```bash
  kubectl create -f /root/pod.yaml
  ```{{}}

</details>

> Podemos visualizar ele rodando no terminal 1

<details open>
  <summary>
    Vamos rodar novamente o comando para criar e conferir o erro informando de que já criamos:
  </summary>

  ```bash
  kubectl create -f /root/pod.yaml
  ```{{}}

</details>
