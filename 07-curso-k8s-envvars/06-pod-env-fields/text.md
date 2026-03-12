## Environment variables

<details open>
  <summary>
    Vamos usar o comando exec para listar as variáveis de ambiente dentro do container do pod
  </summary>

  ```plain
  kubectl exec -ti envvars-field -- printenv
  ```{{}}

</details>


<details open>
  <summary>
    Vamos remover o pod criado
  </summary>

  ```plain
  kubectl delete pod envvars-field
  ```{{}}

</details>
