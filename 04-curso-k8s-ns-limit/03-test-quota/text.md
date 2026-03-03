## Namespaces com limites

<details open>
  <summary>
    Vamos listas deployments, replicasets e pods
  </summary>

  ```plain
  watch -n 1 kubectl get deploy,rs,pod --namespace curso
  ```{{}}

</details>

Em um novo terminal vamos...

<details open>
  <summary>
    Criar um deployment chamado curso
  </summary>

  ```plain
  kubectl create deploy web \
    --image=wfsilva/demoapp:v1 \
    --namespace curso
  ```{{}}

</details>

<details open>
  <summary>
    Escalando o deployment para 5 pods
  </summary>

  ```plain
  kubectl scale deployment web --replicas=5 --namespace=curso
  ```{{}}

  > Conferir no outro terminal se foram criados

</details>

<details open>
  <summary>
    Conferindo o motivo de não escalar no replicaset
  </summary>

  ```plain
  kubectl -n curso describe rs web
  ```{{}}

</details>


