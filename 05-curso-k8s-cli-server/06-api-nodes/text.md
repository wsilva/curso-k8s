## Api Kubernetes

<details open>
  <summary>
    Listando os nodes
  </summary>

  ```plain
  kubectl get nodes
  ```{{}}

</details>

<details open>
  <summary>
    Explorando as opções de parâmetros para nodes:
  </summary>
  
  ```plain
  kubectl get nodes --output=wide
  ```{{}}

  ```plain
  kubectl get nodes --show-labels
  ```{{}}

  ```plain
  kubectl get no -o yaml
  ```{{}}

  ```plain
  kubectl get node controlplane
  ```{{}}

  ```plain
  kubectl get node controlplane -o json
  ```{{}}

</details>
