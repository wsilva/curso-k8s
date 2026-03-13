## Influenciando no scheduler

Trabalhando com tolerations

<details open>
  <summary>
    Vamos criar um pod que tem a toleration ao taint criado no passo anterior
  </summary>

  Arquivo yaml a ser usado: https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/pod/pod-toleration.yaml

  ```bash
  kubectl apply -f \
  https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/pod/pod-toleration.yaml
  ```{{}}

  Podemos conferir o pod demo rodando no watch loop no outro terminal.

</details>


