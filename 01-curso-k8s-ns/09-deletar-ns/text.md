## Removendo namespace

Agora delete o namespace `zezinho` criado anteriormente

<details open>
  <summary>
    Dica
  </summary>

  Lembre, para listar

  ```plain
  kubectl get namespaces
  ```{{}}

  Para remover rodamos:

  ```plain
  kubectl delete ns zezinho
  ```{{}}

</details>

> ATENÇÃO: Ao remover um namespace todos os recursos dentro desse namespace serão removidos também.