## Secrets

Usando as secrets

<details open>
  <summary>
    Injetando secrets em um pod como variáveis de ambiente
  </summary>

  Arquivo yaml: https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/secret/secret-env.yaml

  ```plain
  kubectl apply -f \
  https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/secret/secret-env.yaml
  ```{{}}

</details>

<details open>
  <summary>
    Conferindo as variáveis dentro do container do pod
  </summary>

  ```plain
  kubectl exec -ti secret-env -- printenv
  ```{{}}
</details>
