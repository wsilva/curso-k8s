## Deployments

Gerenciando deployments.

<details open>
  <summary>
    Como deu ruim vamos fazer o roll back com o subcomando undo e em sequencia conferir o status
  </summary>

  ```bash
  kubectl rollout undo \
    deployment deploy-demoapp \
  && kubectl rollout status \
    deployment deploy-demoapp
  ```{{}}
  
</details>

<details open>
  <summary>
    Confindo o rollout history não temos mais o update para a imagem quebrada
  </summary>

  ```bash
  kubectl rollout history deployment deploy-demoapp
  ```{{}}
  
</details>
