## Secrets

Usando as secrets

<details open>
  <summary>
    Injetando secrets em um pod como volume
  </summary>

  Arquivo yaml: https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/secret/secret-volume.yaml

  ```plain
  kubectl apply -f \
  https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/secret/secret-volume.yaml
  ```{{}}

</details>

<details open>
  <summary>
    Conferindo os arquivos dentro do container do pod
  </summary>

  ```plain
  kubectl exec -ti secret-volume -- mount | grep secret
  ```{{}}
  
  ```plain
  kubectl exec -ti secret-volume -- ls -l / | grep secret
  ```{{}}
  
  ```plain
  kubectl exec -ti secret-volume -- ls -l /secret-files
  ```{{}}
  
  ```plain
  kubectl exec -ti secret-volume -- cat /secret-files/user.txt
  ```{{}}
  
  ```plain
  kubectl exec -ti secret-volume -- cat /secret-files/pass.txt
  ```{{}}
</details>
