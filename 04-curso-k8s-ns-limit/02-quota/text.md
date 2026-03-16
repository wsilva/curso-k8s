## Namespaces com limites

<details open>
  <summary>
    Criando uma quota com limite de 3 pods para o namespace curso
  </summary>

  ```bash
  kubectl create quota curso-quota \
    --hard=pods=3 \
    --namespace=curso
  ```{{}}

</details>

<details open>
  <summary>
    Verificando
  </summary>

  ```bash
  kubectl --namespace curso get quota curso-quota
  ```{{}}

  Ou mais curto:

  ```bash
  kubectl -n curso get quota curso-quota
  ```{{}}

</details>
