## Criando um pod

No primeiro terminal vamos listar os pods rodando

```plain
watch -n 1 "kubectl get pod --output=wide"
```{{exec}}

No segundo terminal vamos criar um pod chamado `meu-podinho`

<details open>
  <summary>
    Dica
  </summary>

  Rode:

  ```plain
  kubectl run meu-podinho --image=nginx --port=80
  ```{{exec}}

</details>

> No primeiro terminal conseguimos acompanhar a criação do pod com o comando `watch`.

> Para parar a execução do comando `watch` basta executarmos `ctrl+c` no primeiro terminal.
