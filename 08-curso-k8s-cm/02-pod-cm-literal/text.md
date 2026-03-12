## ConfigMaps

<details open>
  <summary>
    Rodando um pod que injeta o configmap em variáveis de ambiente
  </summary>

  Arquivo yaml: https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/cm/cm-literal.yaml

  ```plain
  kubectl apply -f \
  https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/cm/cm-literal.yaml
  ```{{}}
</details>


<details open>
  <summary>
    Listando as variáveis de ambiente no pod
  </summary>

  ```plain
  kubectl exec -it cm-literal -- printenv
  ```{{}}
</details>
