## Comando apply

Primeiro vamos no terminal um, parar o comando `watch` com `ctrl+c`

Em seguida rodar

```plain
kubectl port-forward pod/demo 8080:8080
```{{}}

Voltamos para o terminal 2 e vamos tentar acessar o pod `demo`.

```plain
curl http://localhost:8080
```{{}}

<br>

Voltando ao terminal 1, usamos o `ctrl+z` para colocar o port-forward em back ground com o seguinte comando

```plain
bg
```{{}}

Podemos conferir com 

```plain
jobs
```{{}}

Agora vamos rodar port forward para o `meu-podinho`

```plain
kubectl port-forward pod/meu-podinho 8888:80 &
```{{}}

<br>

Voltamos para o terminal 2 e vamos tentar acessar o `meu-podinho`

```plain
curl http://localhost:8888
```{{}}
