## ConfigMaps

<details open>
  <summary>
    Vamos remover os pods e configmaps criados
  </summary>

  ```plain
  kubectl delete \
    cm/demo-file \
    cm/demo-literal \
    pod/cm-file \
    pod/cm-literal
  ```{{}}

</details>
