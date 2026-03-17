## Deployments

Gerenciando deployments.

<details open>
  <summary>
    Vamos aplicar o arquivo deploy.yaml com a annotation e a nova imagem
  </summary>

  ```bash
  kubectl apply -f deploy.yaml
  ```{{}}

  Em seguida conferimos no terminal em loop.

  O novo replicaset foi criado e os pods recriados saindo de um replicaset para o outro.
  
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
