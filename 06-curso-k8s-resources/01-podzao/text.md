## Recursos do pod

<details open>
  <summary>
    Vamos criar um pod que requisita 5Gi de memória:
  </summary>

  Arquivo yaml: https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/pod/podzao.yaml

  ```bash
  kubectl apply -f \
  https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/pod/podzao.yaml
  ```{{}}

</details>

<details open>
  <summary>
    Olhando se o pod está rodando
  </summary>

  ```bash
  watch "\
    kubectl get pod \
    -o wide"
  ```{{}}

</details>

<details open>
  <summary>
    Vamos conferir os eventos com o describe:
  </summary>

  ```bash
  kubectl describe pod \
    podzao | \
    grep Events -A 20
  ```{{}}

</details>

