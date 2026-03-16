## ConfigMaps

Criando configMap com base em um arquivo.

<details open>
  <summary>
    Vamos criar um arquivo chamado exemplo-cm.txt
  </summary>

  ```bash
  echo 'yabadabadooo !!!' > exemplo-cm.txt
  echo 'adicionando' >> exemplo-cm.txt
  echo 'mais uma linha' >> exemplo-cm.txt
  echo 'no arquivo' >> exemplo-cm.txt
  ```{{}}

  Conferindo o arquivo 
  ```bash
  cat exemplo-cm.txt
  ```{{}}
</details>

<details open>
  <summary>
    Vamos criar manualmente o configmap usando o arquivo
  </summary>

  ```bash
  kubectl create configmap \
    demo-file \
    --from-file=exemplo-cm.txt
  ```{{}}
</details>

<details open>
  <summary>
    Usando o dercribe para ver o configmap
  </summary>

  ```bash
  kubectl describe cm demo-file
  ```{{}}
</details>

<details open>
  <summary>
    Pegando o output em formato yaml
  </summary>

  ```bash
  kubectl get cm demo-file -o yaml
  ```{{}}
</details>
