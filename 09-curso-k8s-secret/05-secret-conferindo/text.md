## Secrets

Conferindo os secrets criados

<details open>
  <summary>
    Descrevendo os secrets criados
  </summary>

  ```plain
  kubectl describe secrets poryaml
  ```{{}}

  ```plain
  kubectl describe secrets cli-file
  ```{{}}

  ```plain
  kubectl describe secrets cli-literal
  ```{{}}

  ```plain
  kubectl describe secrets registry
  ```{{}}
</details>

<details open>
  <summary>
    Olhando em formado yaml
  </summary>

  ```plain
  kubectl get secrets poryaml -o yaml
  ```{{}}

  ```plain
  kubectl get secrets cli-file -o yaml
  ```{{}}

  ```plain
  kubectl get secrets cli-literal -o yaml
  ```{{}}

  ```plain
  kubectl get secrets registry -o yaml
  ```{{}}
</details>
