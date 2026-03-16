## Secrets

<details open>
  <summary>
    Vamos remover os pods e secrets criados
  </summary>

  ```bash
  kubectl delete \
    pod/secret-env \
    pod/secret-volume \
    secret/cli-literal \
    secret/cli-file \
    secret/poryaml \
    secret/registry
  ```{{}}
</details>
