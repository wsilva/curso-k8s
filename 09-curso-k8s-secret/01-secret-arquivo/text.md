## Secrets

Criando arquivo secret.yaml e criando uma secret a partir dele.

<details open>
  <summary>
    Vamos gerar dois hashes simulando usuário e senha
  </summary>

  ```plain
  echo -n 'admin' | base64
  echo -n '1f2d1e2e67df' | base64
  ```{{}}

  Vamos jogar para dentro de variáveis de ambiente

  ```plain
  USERNAME=$(echo -n 'admin' | base64)
  PASSWORD=$(echo -n '1234abcd-senha-uhuuu' | base64)
  ```{{}}

</details>

<details open>
  <summary>
    Criando um arquivo secret.yaml usando esses hashs
  </summary>

  ```plain
  cat <<FIM | tee secret.yaml
  apiVersion: v1
  kind: Secret
  metadata:
    name: poryaml
  type: Opaque
  data:
    username: $USERNAME
    password: $PASSWORD
  FIM
  ```{{}}
</details>

<details open>
  <summary>
    Criando a secret
  </summary>

  ```plain
  kubectl apply -f secret.yaml
  ```{{}}
</details>

<details open>
  <summary>
    Conferindo
  </summary>

  Usando o describe

  ```plain
  kubectl describe secret poryaml
  ```{{}}

  Em formato yaml

  ```plain
  kubectl get secret poryaml -o yaml
  ```{{}}
</details>
