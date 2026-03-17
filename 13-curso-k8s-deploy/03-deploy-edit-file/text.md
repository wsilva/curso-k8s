## Deployments

Gerenciando deployments.

<details open>
  <summary>
    Vamos alterar o arquivo de deployment alterando a imagen de v2 para v3
  </summary>

  ```bash
  vim deploy.yaml
  ```{{}}

  ou

  ```bash
  nano deploy.yaml
  ```{{}}


  ```yaml{19}
  apiVersion: apps/v1
  kind: Deployment
  metadata:
    name: deploy-demoapp
    labels:
      app: demoapp
  spec:
    replicas: 3
    selector:
      matchLabels:
        app: demoapp
    template:
      metadata:
        labels:
          app: demoapp
      spec:
        containers:
        - name: demoapp
          image: wfsilva/demoapp:v2  # trocar para v3
          ports:
          - containerPort: 8080
  ```{{}} 

</details>
