## Secrets

Conferindo os secrets criados

<details open>
  <summary>
    Descrevendo os secrets criados
  </summary>

  ```bash
  kubectl describe secrets poryaml
  ```{{}}

  ```bash
  kubectl describe secrets cli-file
  ```{{}}

  ```bash
  kubectl describe secrets cli-literal
  ```{{}}

  ```bash
  kubectl describe secrets registry
  ```{{}}
</details>

<details open>
  <summary>
    Olhando em formado yaml
  </summary>

  ```bash
  kubectl get secrets poryaml -o yaml
  ```{{}}

  ```bash
  kubectl get secrets cli-file -o yaml
  ```{{}}

  ```bash
  kubectl get secrets cli-literal -o yaml
  ```{{}}

  ```bash
  kubectl get secrets registry -o yaml
  ```{{}}
</details>
