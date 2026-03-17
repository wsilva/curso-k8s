## Deployments

Gerenciando deployments.

<details open>
  <summary>
    Vamos pausar os rollouts do deployment
  </summary>

  ```bash
  kubectl rollout pause \
    deployment deploy-demoapp
  ```{{}}
  
</details>

<details open>
  <summary>
    Vamos criar mais uma versão  agora usando set resources
  </summary>

  ```bash
  kubectl set resources \
    deployment deploy-demoapp \
    -c=demoapp \
    --limits=cpu=100m,memory=256Mi \
    --record
  ```{{}}

  Olhando no terminal em loop vemos que nada acontece.
  
</details>

<details open>
  <summary>
    Olhando o rollout history também nada novo aconteceu
  </summary>

  ```bash
  kubectl rollout history deployment deploy-demoapp
  ```{{}}
  
</details>

<details open>
  <summary>
    Olhando o rollout status vemos que está pausado
  </summary>

  ```bash
  kubectl rollout status deployment deploy-demoapp
  ```{{}}

  Vamos parar com o `ctrl + c`
  
</details>


<details open>
  <summary>
    Vamos tirar o pause do deployment e em seguida acompanhar o status
  </summary>

  ```bash
  kubectl rollout resume \
    deployment deploy-demoapp \
  && kubectl rollout status \
    deployment deploy-demoapp
  ```{{}}

  Agora sim o rollout finaliza com sucesso.
  
</details>

<details open>
  <summary>
    Olhando o history temos uma oitava versão
  </summary>

  ```bash
  kubectl rollout history deployment deploy-demoapp
  ```{{}}

</details>
