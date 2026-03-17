## Deployments

Gerenciando deployments.

<details open>
  <summary>
    Para ver os detalhes de uma revision usamos o comando com a flag revision
  </summary>

  Para versão 3

  ```bash
  kubectl rollout history \
    deployment deploy-demoapp \
    --revision 3
  ```{{}}

  Para versão 2
  
  ```bash
  kubectl rollout history \
    deployment deploy-demoapp \
    --revision 2
  ```{{}}
  
</details>

<details open>
  <summary>
    Vamos conferir o rollout novamente.
  </summary>

  ```bash
  kubectl rollout history \
    deployment deploy-demoapp
  ```{{}}

  Temos 3 versões com 2 devidamente anotadas.
  
</details>
