## Deployments

Gerenciando deployments.

<details open>
  <summary>
    Vamos listar os deployments, replicasets e pods disponíveis mostrando os labels
  </summary>

  ```plain
  watch -n 1 "\
    kubectl get \
      deploy,rs,po \
      --show-labels"
  ```{{}}

</details>

<details open>
  <summary>
    Em outro terminal vamos baixar um arquivo de deployment
  </summary>

  Arquivo yaml disponível em https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/deploy/deploy.yaml

  ```bash
  curl -sSLO \
  https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/deploy/deploy.yaml
  ```{{}}

  Conferindo:

  ```bash
  cat deploy.yaml
  ```{{}}

</details>
