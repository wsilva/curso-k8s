## Replication Controller

Gerenciando replication controllers.

<details open>
  <summary>
    Vamos listar os pods com label app = demoapp
  </summary>

  ```bash
  kubectl get pod --selector app=demoapp
  ```{{}}

</details>

<details open>
  <summary>
    Agora vamos listar os pods com label app = demoapp mas com output em json
  </summary>

  ```bash
  kubectl get pod \
    --selector app=demoapp \
    -o json
  ```{{}}

</details>

<details open>
  <summary>
    Desses output vamos filtrar só o nome dentro de metadata
  </summary>

  ```bash
  kubectl get pod \
    --selector app=demoapp \
    -o json \
    | jq -r '.items[].metadata.name'
  ```{{}}

</details>

<details open>
  <summary>
    Vamos pegar só o nome do terceiro pod
  </summary>

  ```bash
  kubectl get pod \
    --selector app=demoapp \
    -o json \
    | jq -r '.items[2].metadata.name'
  ```{{}}

</details>

<details open>
  <summary>
    Usando o comando anterior vamos deletar só o pod que ele busca
  </summary>

  ```bash
  kubectl delete pod \
    $(kubectl get pod \
    --selector app=demoapp \
    -o json \
    | jq -r '.items[2].metadata.name')
  ```{{}}

  E vamos conferir o comportamento no loop rodando no outro terminal.

  Sim, o pod é removido mas o replication controller cria outro.

</details>
