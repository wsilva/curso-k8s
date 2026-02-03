## Entrando no pod

<br>

No terminal 2 vamos rodar

```plain
kubectl exec -it meu-podinho -- bash
```{{exec}}

<br>

Vamos editar o arquivo `index.html`

```plain
cat <<FIM > /usr/share/nginx/html/index.html
<h1>Kubernetaaaa!!!</h1>
FIM
```{{exec}}

<br>

Usamos o `ctrl+d` o o seguinte comando `exit` para sair do pod

```plain
exit
```{{exec}}

<br>

Rodando novamente o curl para ver o conteúdo alterado

```plain
curl http://localhost:8888
```{{exec}}

