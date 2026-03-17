## Deployments

Gerenciando deployments.

<details open>
  <summary>
    Vamos trocar a imagem novamente usando comando set image e acompanhar o rollout com o subcomando status
  </summary>

  ```bash
  kubectl set image \
    deployment deploy-demoapp \
    demoapp=nginx --record \
  && kubectl rollout status \
    deployment deploy-demoapp
  ```{{}}
  
</details>

<details open>
  <summary>
    Terminado o rollout o terminal é liberado e podemos conferir
  </summary>
  
  ```bash
  kubectl rollout history deployment deploy-demoapp
  ```{{}}

  A change cause será o comando executado.
  
</details>
