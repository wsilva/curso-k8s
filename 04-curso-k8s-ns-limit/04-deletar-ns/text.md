## Removendo namespace

Agora delete o namespace `curso` criado anteriormente

<details open>
  <summary>
    Removendo o namespace
  </summary>

  ```bash
  kubectl delete ns \
    curso \
    --grace-period=0 \
    --force \
    --cascade
  ```{{}}

  > ATENÇÃO: Ao remover um namespace todos os recursos dentro desse namespace serão removidos também.

</details>

<details open>
  <summary>
    Para conferir
  </summary>

  ```bash
  kubectl get ns
  ```{{}}

</details>
