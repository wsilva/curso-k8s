## Secrets

Secrets do tipo docker registry.

<details open>
  <summary>
    Vamos criar secret do tipo registry (usada para baixar imagens de registries privados)
  </summary>

  ```plain
  kubectl create secret docker-registry \
    registry \
    --docker-username=dockeruser \
    --docker-password=dockerpass
  ```{{}}
</details>


