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

