## Deployments

Gerenciando deployments.

<details open>
  <summary>
    Vamos alterar o arquivo deploy.yaml adicionando a estratégia no spec do deployment e alterando o nome
  </summary>

  ```bash
  vim deploy.yaml
  ```{{}}
  
  ou

  ```bash
  nano deploy.yaml
  ```{{}}

  Vai ficar assim o arquivo yaml:

  ```yaml{4,8-9}
  apiVersion: apps/v1
  kind: Deployment
  metadata:
    name: deploy-recreate # novo nome
    ...
  spec:
    replicas: 3
    strategy:  # adicionando strategy
      type: Recreate
    selector:
      matchLabels:
        app: demoapp
    template:
      ...
  ```{{}}

</details>

<details open>
  <summary>
    Vamos aplicar esse novo deployment
  </summary>

  ```bash
  kubectl apply -f deploy.yaml
  ```{{}}

  Alternativamente podemos aplicar o exemplo pronto (https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/deploy/deploy-recreate.yaml)

  ```bash
  kubectl apply -f \
  https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/deploy/deploy-recreate.yaml
  ```{{}}
  
</details>
