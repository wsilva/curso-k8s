## Deletando o recursos

Agora delete o pod criado anteriomente

<details open>
  <summary>
    Dica
  </summary>

  Podemos remover um a um

  ```plain
  kubectl delete pod phpfpm-nginx
  ```{{exec}}

  ```plain
  kubectl delete configmap nginx-config
  ```{{exec}}

  Ou podemos remover todos de uma vez

  ```plain
  kubectl delete pod/phpfpm-nginx configmap/nginx-config
  ```{{exec}}

</details>
