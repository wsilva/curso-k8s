## Influenciando no scheduler

<details open>
  <summary>
    Vamos remover os pods criados
  </summary>

  ```bash
  kubectl delete \
    deploy/web \
    pod/demo \
    pod/demo-schedule
  ```{{}}
</details>
