## ConfigMaps

<details open>
  <summary>
    Rodando um pod que injeta o configmap em arquivo
  </summary>

  Arquivo yaml: https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/cm/cm-file.yaml

  ```bash
  kubectl apply -f \
  https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/cm/cm-file.yaml
  ```{{}}
</details>


<details open>
  <summary>
    Vendo os arquivos criados dentro do pod
  </summary>

  Listando:
  
  ```bash
  kubectl exec -it \
    cm-file -- ls -la /
  ```{{}}
  
  Pegando o conteúdo:
  
  ```bash
  kubectl exec -it \
    cm-file -- cat /exemplo-cm.txt
  ```{{}}
</details>
