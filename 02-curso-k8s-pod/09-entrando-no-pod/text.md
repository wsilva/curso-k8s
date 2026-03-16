## Entrando no pod

No terminal 2 vamos rodar

```bash
kubectl exec -it meu-podinho -- bash
```{{}}

Vamos editar o arquivo `index.html`

```bash
cat <<FIM > /usr/share/nginx/html/index.html
<h1>Kubernetaaaa!!!</h1>
FIM
```{{exec}}

Usamos o `ctrl+d` o o seguinte comando `exit` para sair do pod

```bash
exit
```{{}}

Rodando novamente o curl para ver o conteúdo alterado

```bash
curl http://localhost:8888
```{{}}
