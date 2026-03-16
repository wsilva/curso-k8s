## Criando um pod

No primeiro terminal vamos listar os pods rodando com o comando:

```bash
watch -n 1 "\
  kubectl get pod \
  --output=wide"
```{{}}

No segundo terminal vamos criar um pod chamado `meu-podinho`

<details open>
  <summary>
    Dica
  </summary>

  Rode:

  ```bash
  kubectl run meu-podinho \
    --image=nginx \
    --port=80
  ```{{}}

</details>

> No primeiro terminal conseguimos acompanhar a criação do pod com o comando `watch`.
> Para parar a execução do comando `watch` basta executarmos `ctrl+c` no primeiro terminal.
