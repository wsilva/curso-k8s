## Comando apply

<br>

Primeiro vamos no terminal um, parar o comando `watch` com `ctrl+c`

<br>

Em seguida rodar

```plain
kubectl port-forward pod/demo 8080:8080
```{{exec}}

<br>

Voltamos para o terminal 2 e vamos tentar acessar o pod `demo`.

```plain
curl http://localhost:8080
```{{exec}}

<br>

Voltando ao terminal 1, usamos o `ctrl+z` para colocar o port-forward em back ground com o seguinte comando

```plain
bg
```{{exec}}

Podemos conferir com 

```plain
jobs
```{{exec}}

Agora vamos rodar port forward para o `meu-podinho`

```plain
kubectl port-forward pod/meu-podinho 8888:80 &
```{{exec}}

<br>

Voltamos para o terminal 2 e vamos tentar acessar o `meu-podinho`

```plain
curl http://localhost:8888
```{{exec}}
