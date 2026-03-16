## ConfigMaps

<details open>
  <summary>
    Vamos criar um configmap chamado demo-literal pela linha de comando
  </summary>

  ```bash
  kubectl create configmap \
    demo-literal \
    --from-literal=curso=k8s \
    --from-literal=chave=valor
  ```{{}}
</details>

<details open>
  <summary>
    Usando o describe para ver o configmap
  </summary>

  ```bash
  kubectl describe cm demo-literal
  ```{{}}
</details>

<details open>
  <summary>
    Vendo o configmap em formato yaml
  </summary>

  ```bash
  kubectl get cm demo-literal -o yaml
  ```{{}}
</details>
