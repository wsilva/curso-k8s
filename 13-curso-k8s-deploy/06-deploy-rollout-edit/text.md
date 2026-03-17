## Deployments

Gerenciando deployments.

<details open>
  <summary>
    Podemos definir a causa também pelo arquivo yaml
  </summary>

  Vamos editar o arquivo deploy.yaml colocando a annotation dentro de metadata e alterando a imagem agora para v1

  ```bash
  vim deploy.yaml
  ```{{}}

  ou 

  ```bash
  nano deploy.yaml
  ```{{}}

  Vai ficar assim:

  ```yaml{4-5,15}
  apiVersion: apps/v1
  kind: Deployment
  metadata:
    annotations:
      kubernetes.io/change-cause: "voltando pra v1"
    name: deploy-demoapp
    ...
  spec:
    ...
    template:
      ...
      spec:
        containers:
        - name: demoapp
          image: wfsilva/demoapp:v1  # era v3
  ```
  
</details>
