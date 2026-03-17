## Deployments

Gerenciando deployments.

<details open>
  <summary>
    Vamos criar o deployment com base no arquivo baixado
  </summary>

  ```bash
  kubectl apply -f deploy.yaml
  ```{{}}

 Vamos voltar no outro terminal para ver os pods criados.

 O deployment cria um replicaset e por sua vez o replicaset cria os pods.

</details>
