## Replicasets

Gerenciando replicasets.

<details open>
  <summary>
    Vamos escalar o replicaset para 5 replicas
  </summary>

  ```bash
  kubectl scale \
    rs rs-demoapp \
    --replicas 5 
  ```{{}}

  Em seguida conferir no terminal rodando o loop

</details>

<details open>
  <summary>
    Agora vamos descrever o replicaset criado
  </summary>

  ```bash
  kubectl describe replicaset rs-demoapp
  ```{{}}

  ou 

  ```bash
  kubectl describe rs rs-demoapp
  ```{{}}

</details>

<details open>
  <summary>
    Podemos filtar o describe pela linha que define o selector
  </summary>

  ```bash
  kubectl describe \
    rs rs-demoapp \
    | grep Selector:
  ```{{}}

</details>

<details open>
  <summary>
    Também podemos filtar o describe pelos eventos e ver as ações de scale
  </summary>

  ```bash
  kubectl describe \
    rs rs-demoapp \
    | grep -A 20 Events
  ```{{}}

</details>
