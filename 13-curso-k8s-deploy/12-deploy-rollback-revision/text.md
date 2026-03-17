## Deployments

Gerenciando deployments.

<details open>
  <summary>
    Podemos ir para uma versão específica do history, devemos usar o --to-revision
  </summary>

  ```bash
  kubectl rollout undo \
    deployment deploy-demoapp \
    --to-revision=1
  ```{{}}
  
</details>

<details open>
  <summary>
    A revision 1 some e aparece a revision 7 no lugar
  </summary>

  ```bash
  kubectl rollout history deployment deploy-demoapp
  ```{{}}
  
</details>
