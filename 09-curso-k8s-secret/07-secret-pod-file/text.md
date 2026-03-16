## Secrets

Usando as secrets

<details open>
  <summary>
    Injetando secrets em um pod como volume
  </summary>

  Arquivo yaml: https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/secret/secret-volume.yaml

  ```bash
  kubectl apply -f \
  https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/secret/secret-volume.yaml
  ```{{}}

</details>

<details open>
  <summary>
    Conferindo os arquivos dentro do container do pod
  </summary>

  ```bash
  kubectl exec -ti secret-volume -- mount | grep secret
  ```{{}}
  
  ```bash
  kubectl exec -ti secret-volume -- ls -l / | grep secret
  ```{{}}
  
  ```bash
  kubectl exec -ti secret-volume -- ls -l /secret-files
  ```{{}}
  
  ```bash
  kubectl exec -ti secret-volume -- cat /secret-files/user.txt
  ```{{}}
  
  ```bash
  kubectl exec -ti secret-volume -- cat /secret-files/pass.txt
  ```{{}}
</details>
