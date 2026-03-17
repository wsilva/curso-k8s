## Deployments

Gerenciando deployments.

<details open>
  <summary>
    Vamos ver o histórico de versões usando o comando rollout
  </summary>

  ```bash
  kubectl rollout history deployment deploy-demoapp
  ```{{}}

</details>

<details open>
  <summary>
    Podemos mudar o campo de causa com o comando annotate
  </summary>

  ```bash
  kubectl annotate \
    deploy deploy-demoapp \
    kubernetes.io/change-cause="regravando mensagem"
  ```{{}}

</details>

<details open>
  <summary>
    Vamos olhar o rollout de novo
  </summary>

  ```bash
  kubectl rollout history deployment deploy-demoapp
  ```{{}}

</details>
