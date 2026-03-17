## Deployments

Gerenciando deployments.

<details open>
  <summary>
    Vamos trocar a imagem novamente usando comando set image mas com uma imagem que não existe e acompanhar o rollout com o subcomando status
  </summary>

  ```bash
  kubectl set image \
    deployment deploy-demoapp \
    demoapp=maguila --record \
  && kubectl rollout status \
    deployment deploy-demoapp
  ```{{}}

  O rollout nunca converge, vamos matar ele com `ctlr + c`.
  
</details>

<details open>
  <summary>
    Mesmo parando o comando o comando rollout o deployment continua tentando. Podemos ver rodando novamente
  </summary>
  
  ```bash
  kubectl rollout status deployment deploy-demoapp
  ```{{}}

  Vamos matar novamente com `ctrl + c`.

  Vamos notar que o replicaset criado fica tentando criar um pod e o último replicaset mantem os 3 pods saudáveis de pé.
  
</details>
