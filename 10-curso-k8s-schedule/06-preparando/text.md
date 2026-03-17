## Influenciando no scheduler

Trabalhando com node affinity

<details open>
  <summary>
    Primeiro vamos remover o taint do node controlplane se ainda não removemos
  </summary>

    ```bash
    kubectl taint node \
      controlplane \
      node-role.kubernetes.io/control-plane-
  ```{{}}

</details>

<details open>
  <summary>
    Vamos dedicar um terminal para listar os pods
  </summary>

    ```bash
  watch "kubectl get pod -o wide --show-labels"
  ```{{}}

</details>
