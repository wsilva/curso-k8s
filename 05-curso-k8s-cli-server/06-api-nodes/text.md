## Api Kubernetes

<details open>
  <summary>
    Listando os nodes
  </summary>

  ```bash
  kubectl get nodes
  ```{{}}

</details>

<details open>
  <summary>
    Explorando as opções de parâmetros para nodes:
  </summary>
  
  ```bash
  kubectl get nodes --output=wide
  ```{{}}

  ```bash
  kubectl get nodes --show-labels
  ```{{}}

  ```bash
  kubectl get no -o yaml
  ```{{}}

  ```bash
  kubectl get node controlplane
  ```{{}}

  ```bash
  kubectl get node controlplane -o json
  ```{{}}

</details>
