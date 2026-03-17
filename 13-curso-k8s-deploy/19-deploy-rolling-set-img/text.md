## Deployments

Gerenciando deployments.

<details open>
  <summary>
    Vamos alterar o o deployment com o set image trocando a imagem
  </summary>

  ```bash
  kubectl set image \
    deploy deploy-rolling \
    demoapp=wfsilva/demoapp:v3
  ```{{}}

  Vemos que o kubernetes cria metade dos pods conforme definido em maxSurge, aguarda eles ficarem health antes de remover os antigos.

</details>
