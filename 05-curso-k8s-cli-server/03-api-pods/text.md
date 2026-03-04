## Api Kubernetes

<details open>
  <summary>
    Agora conseguimos listar os pods
  </summary>

  ```plain
  curl --request POST --header "Content-Type: application/json" \
    --cacert ca.crt --cert client.crt --key client.key \
    --data '{
      "apiVersion": "v1",
      "kind": "Pod",
      "metadata": { "name": "pod-criado-via-curl" },
      "spec": {
        "containers": [{ "name": "nginx", "image": "nginx" }]
      }
    }' \
    https://172.30.1.2:6443/api/v1/namespaces/default/pods
  ```{{}}

</details>

<details open>
  <summary>
    Conferindo pods rodando
  </summary>

  ```plain
  watch "kubectl get pods"
  ```{{}}

</details>
