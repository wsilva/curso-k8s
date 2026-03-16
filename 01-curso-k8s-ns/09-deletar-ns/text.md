## Removendo namespace

Agora delete o namespace `zezinho` criado anteriormente

<details open>
  <summary>
    Dica
  </summary>

  Lembre, para listar

  ```bash
  kubectl get namespaces
  ```{{}}

  Para remover rodamos:

  ```bash
  kubectl delete ns zezinho
  ```{{}}

</details>

> ATENÇÃO: Ao remover um namespace todos os recursos dentro desse namespace serão removidos também.
