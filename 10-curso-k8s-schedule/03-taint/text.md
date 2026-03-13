## Influenciando no scheduler

Trabalhando com tain e tolerations.

<details open>
  <summary>
    Vamos criar um deployment chamado web com uma imagem nginx
  </summary>

  ```bash
  kubectl create deploy web --image=nginx
  ```{{}}
</details>

<details open>
  <summary>
    Vamos escalar o deployment para 5 pods
  </summary>

  ```bash
  kubectl scale deploy web --replicas=5
  ```{{}}
</details>

<details open>
  <summary>
    Conferindo os pods rodando e os node com os taints
  </summary>

  Em um terminal separado rodamos

  ```bash
  watch -n 1 '\
  kubectl get pod -o wide; \
  kubectl get node -o json | \
  jq ".items[] | \
  {name: .metadata.name,taints: .spec.taints}"'
  ```{{}}
</details>

<details open>
  <summary>
    Vamos adicionar um taint ao node01
  </summary>

  ```bash
  kubectl taint nodes node01 doenca=dengue:NoExecute
  ```{{}}
  
  No outro terminal percebemos os pods indo para pending
</details>
