## Api Kubernetes

<details open>
  <summary>
    Vamos extrair o CA Cert para o arquivo ca.cert
  </summary>

  ```plain
  grep 'certificate-authority-data' ~/.kube/config | awk '{print $2}' | base64 -d > ca.crt
  ```{{}}
</details>

<details open>
  <summary>
    Vamos extrair o Client Cert para o arquivo client.crt
  </summary>

  ```plain
  grep 'client-certificate-data' ~/.kube/config | awk '{print $2}' | base64 -d > client.crt
  ```{{}}
</details>

<details open>
  <summary>
    Vamos extrair o Client Key para o arquivo client.key
  </summary>

  ```plain
  grep 'client-key-data' ~/.kube/config | awk '{print $2}' | base64 -d > client.key
  ```{{}}
</details>

<details open>
  <summary>
    Explicando os comandos usados.
  </summary>

  Pegando o conteudo do arquivo `~/.kube/config` filtrando pelo termo `client-key-data` e manda para o proximo `pipe`:

  ```txt
  grep 'client-key-data' ~/.kube/config
  ```

  Pega o segundo termo da linha filtrada e manda para o próximo `pipe`:
  
  ```txt
  awk '{print $2}' 
  ```

  Faz o decode `base64` e envia o conteúdo para o arquivo `client.key` criando e ou subistituindo o conteúdo se houver:
  
  ```txt
  base64 -d > client.key
  ```
</details>
