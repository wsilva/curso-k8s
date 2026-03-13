## Recursos do pod

<details open>
  <summary>
    Vamos criar um pod que requisita 256Mi de memória mas tenta usar 512MB
  </summary>

  Arquivo yaml: https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/pod/pod-oom.yaml

  ```plain
  kubectl apply -f \
  https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/pod/pod-oom.yaml
  ```{{}}

</details>

<details open>
  <summary>
    Olhando se o pod está rodando
  </summary>

  ```plain
  watch "kubectl get pod -o wide"
  ```{{}}

</details>

<details open>
  <summary>
    Vamos conferir os eventos com o describe:
  </summary>

  ```plain
  kubectl describe pod demo-oom | grep State -A 5
  ```{{}}

</details>

