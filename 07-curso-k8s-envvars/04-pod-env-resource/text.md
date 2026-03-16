## Environment variables

<details open>
  <summary>
    Vamos usar o comando exec para listar as variáveis de ambiente dentro do container do pod
  </summary>

  ```bash
  kubectl exec -ti envvars-resources -- printenv
  ```{{}}

</details>

<details open>
  <summary>
    Vamos remover o pod criado
  </summary>

  ```bash
  kubectl delete pod envvars-resources
  ```{{}}

</details>
