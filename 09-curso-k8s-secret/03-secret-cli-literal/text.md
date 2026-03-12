## Secrets

Secrets por linha de comando.

<details open>
  <summary>
    Vamos criar secret manualmente passando os valores por linha de comando
  </summary>

  ```plain
  kubectl create secret generic \
    cli-literal \
    --from-literal=user=outrouser \
    --from-literal=pass=outrasenha
  ```{{}}
</details>


