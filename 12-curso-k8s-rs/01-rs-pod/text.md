## Replicasets

Gerenciando replicasets.

<details open>
  <summary>
    Vamos listar os replications controllers e pods disponíveis mostrando os labels
  </summary>

  ```plain
  watch -n 1 "\
    kubectl get \
      rs,pods \
      -o wide \
      --show-labels"
  ```{{}}

</details>

<details open>
  <summary>
    Vamos criar um pod que tenha a label tier = web
  </summary>

  Arquivo yaml disponível em https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/rs/pod.yaml

  ```bash
  kubectl apply -f \
  https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/rs/pod.yaml
  ```{{}}

  Vamos voltar ao outro terminal para ver o pod criado

</details>
