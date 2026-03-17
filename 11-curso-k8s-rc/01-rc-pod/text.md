## Replication Controller

Gerenciando replication controllers.

<details open>
  <summary>
    Vamos listar os replications controllers e pods disponíveis mostrando os labels
  </summary>

  ```plain
  watch -n 1 "\
    kubectl get rc,pods\
     -o wide \
     --show-labels"
  ```{{}}

</details>

<details open>
  <summary>
    Vamos criar um pod que tenha a label app = demoapp
  </summary>

  Arquivo yaml disponível em https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/rc/pod.yaml

  ```bash
  kubectl apply -f \
  https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/rc/pod.yaml
  ```{{}}

  Vamos voltar ao outro terminal para ver o pod criado

</details>
