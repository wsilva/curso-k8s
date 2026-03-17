## Deployments

Gerenciando deployments.

<details open>
  <summary>
    Vamos alterar o o deployment com o set image trocando a imagem
  </summary>

  ```bash
  kubectl set image \
    deploy deploy-recreate \
    demoapp=wfsilva/demoapp:v3
  ```{{}}

  Vemos que o kubernetes ao invés de adicinar novos pods antes de remover os antigos ele remove todos os pods antes de criar os novos.

</details>
