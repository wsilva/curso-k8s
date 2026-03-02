## Deletando o recursos

Agora delete o `pod` e o `configmap` criados anteriomente.

<details open>
  <summary>
    Dica
  </summary>

  Podemos remover um a um

  ```plain
  kubectl delete pod phpfpm-nginx
  ```{{}}

  ```plain
  kubectl delete configmap nginx-config
  ```{{}}

  Ou podemos remover todos de uma vez

  ```plain
  kubectl delete pod/phpfpm-nginx configmap/nginx-config
  ```{{}}

</details>
