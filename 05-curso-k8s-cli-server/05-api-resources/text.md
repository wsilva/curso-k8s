## Api Kubernetes

<details open>
  <summary>
    Listando os api resources
  </summary>

  ```bash
  kubectl api-resources
  ```{{}}

  > Note as opções curtas com no, po, svc entre outras

</details>

<details open>
  <summary>
    Explorando as opções de parâmetros para api resources:
  </summary>
  
  ```bash
  kubectl api-resources \
    -o wide
  ```{{}}

  ```bash
  kubectl api-resources \
    -o yaml
  ```{{}}

  ```bash
  kubectl api-resources \
    -o wide | grep nodes
  ```{{}}

  ```bash
  kubectl api-resources \
    -o wide | grep namespaces
  ```{{}}

  ```bash
  kubectl api-resources \
    -o wide | grep pods
  ```{{}}

</details>
