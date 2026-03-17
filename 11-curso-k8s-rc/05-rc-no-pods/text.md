## Replication Controller

Gerenciando replication controllers.

<details open>
  <summary>
    Vamos escalar o replication controller para 0 replicas
  </summary>

  ```bash
  kubectl scale \
    rc rc-demoapp \
    --replicas 0 
  ```{{}}

  Em seguida conferir no terminal rodando o loop

  Sim até o pod que criamos separadamanete foi removido.

</details>

<details open>
  <summary>
    Agora vamos escalar novamente para 3 pods
  </summary>

  ```bash
  kubectl scale \
    rc rc-demoapp \
    --replicas 3
  ```{{}}

  Olhando o terminal em loop vemos que temos 3 pods rodando. Aquele pod criado separadamente não aparece mais

</details>


<details open>
  <summary>
    Vamos tentar criar o pod novamente
  </summary>

  Arquivo yaml disponível em https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/rc/pod.yaml

  ```bash
  kubectl apply -f \
  https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/rc/pod.yaml
  ```{{}}

  Olhando no terminal em loop vemos que ele é criado.
  Mas como o replication controller tenta manter a quantidade de pods em 3 ele é removido em sequencia.

</details>
