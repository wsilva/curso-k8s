## Replicasets

Gerenciando replicasets.

<details open>
  <summary>
    Vamos criar um replicaset que seleciona a label tier = web
  </summary>

  Arquivo yaml disponível em https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/rs/rs.yaml

  ```bash
  kubectl apply -f \
  https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/rs/rs.yaml
  ```{{}}

 Vamos voltar no outro terminal para ver os pods criados.

 Como já existia um pod com a label tier = web então o replicaset criou só mais 3.

</details>