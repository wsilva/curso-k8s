## Comando create

Assim como namespaces também podemos usar a versão curta, longa, singular e plural

<br>

Executamos no termimal 2 para listar os `subcomandos` do comando `create`:

```plain
kubectl create --help | grep -A 15 Available
```{{exec}}

<br>

Executamos também para saber como é o uso do comando `create`:

```plain
kubectl create --help | grep -A 3 Usage
```{{exec}}

<br>

> Só conseguimos criar pelo `run` ou por um arquivo `yaml`.

<br>

Criando um arquivo yaml para um novo pod demo com o seguinte conteúdo:

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
    Dica
  </summary>

  Para remover rodamos:

  ```plain
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
  ```{{exec}}

</details>


Criando o pod `demo` com base no arquivo.

```plain
kubectl create -f /root/pod.yaml
```{{exec}}

> Podemos visualizar ele rodando no terminal 1

Vamos rodar novamente o comando e conferir o erro de que já criamos

```plain
kubectl create -f /root/pod.yaml
```{{exec}}
