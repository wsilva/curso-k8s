## Api Kubernetes

<details open>
  <summary>
    Listando os api resources
  </summary>

  ```plain
  kubectl api-resources
  ```{{}}

  > Note as opções curtas com no, po, svc entre outras

</details>

<details open>
  <summary>
    Explorando as opções de parâmetros para api resources:
  </summary>
  
  ```plain
  kubectl api-resources -o wide
  ```{{}}

  ```plain
  kubectl api-resources -o yaml
  ```{{}}

  ```plain
  kubectl api-resources -o wide | grep nodes
  ```{{}}

  ```plain
  kubectl api-resources -o wide | grep namespaces
  ```{{}}

  ```plain
  kubectl api-resources -o wide | grep pods
  ```{{}}

</details>
