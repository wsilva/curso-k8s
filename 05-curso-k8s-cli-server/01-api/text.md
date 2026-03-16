## Api Kubernetes

<details open>
  <summary>
    Listando os nodes para pegar o ip do node controlplane
  </summary>

  ```bash
  kubectl get node \
    -o json | jq \
    ".items[].status.addresses"
  ```{{}}

</details>

O ip do node `controlplane`: *172.30.1.2*

<details open>
  <summary>
    Vamos usar curl para chamar o endpoint da versão
  </summary>

  ```bash
  curl --insecure \
    https://172.30.1.2:6443/version
  ```{{}}

</details>

<details open>
  <summary>
    Vamos tentar listar os pods
  </summary>

  ```bash
  curl --insecure \
    https://172.30.1.2:6443/api/v1/pods
  ```{{}}

  > O erro `403` ocorre porque é um endpoint que é necessário autenticar.

</details>
