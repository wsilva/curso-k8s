## Replication Controller

Gerenciando replication controllers.

<details open>
  <summary>
    Vamos escalar o replication controller para 5 replicas
  </summary>

  ```bash
  kubectl scale \
    replicationcontroller rc-demoapp \
    --replicas 5 
  ```{{}}

  Em seguida conferir no terminal rodando o loop

</details>

<details open>
  <summary>
    Agora vamos descrever o replication controler criado
  </summary>

  ```bash
  kubectl describe replicationcontroller rc-demoapp
  ```{{}}

  ou 

  ```bash
  kubectl describe rc rc-demoapp
  ```{{}}

</details>

<details open>
  <summary>
    Podemos filtar o describe pela linha que define o selector
  </summary>

  ```bash
  kubectl describe \
    rc rc-demoapp \
    | grep Selector:
  ```{{}}

</details>

<details open>
  <summary>
    Também podemos filtar o describe pelos eventos e ver as ações de scale
  </summary>

  ```bash
  kubectl describe \
    rc rc-demoapp \
    | grep -A 20 Events
  ```{{}}

</details>
