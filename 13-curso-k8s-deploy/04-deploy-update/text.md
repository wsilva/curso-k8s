## Deployments

Gerenciando deployments.

<details open>
  <summary>
    Vamos aplicar o arquivo alterado e conferir o que acontece no watch loop no outro terminal
  </summary>

  ```bash
  kubectl apply -f deploy.yaml
  ```{{}}

  Em seguida conferir no terminal rodando o loop.

  Percebemos os passos:

  1- Um replicaset novo é criado com 0 pods

  2- O replicaset novo aumenta a quantidade de pods
  
  3- O replicaset antigo diminui a quantidade de pods até ficar com 0 pods

</details>
