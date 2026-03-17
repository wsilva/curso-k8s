## Influenciando no scheduler

Conferindo os taints

<details open>
  <summary>
    Vamos usar o describe para conferir os Taints
  </summary>

  Descrevendo controlplane

  ```bash
  kubectl describe node \
    controlplane | grep Taints
  ```{{}}

  Descrevendo node01

  ```bash
  kubectl describe node \
    node01 | grep Taints
  ```{{}}
</details>

<details open>
  <summary>
    Removendo taints
  </summary>

  Removendo do node01

  ```bash
  kubectl taint node \
    node01 \
    doenca-
  ```{{}}

  Vamos conferir o watch loop no outro terminal

  Removendo do controlplane

  ```bash
  kubectl taint nodes \
    controlplane \
    node-role.kubernetes.io/control-plane:NoSchedule-
  ```{{}}

  Vamos novamente conferir o watch loop no outro terminal

  Devemos ter todos os pods rodando
  
</details>
