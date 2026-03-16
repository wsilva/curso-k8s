## Deletando os pods

Agora delete os pods criados anteriomente

<details open>
  <summary>
    Para remover o pod demo rodamos:
  </summary>

  ```bash
  kubectl delete pod demo
  ```{{}}

</details>


<details open>
  <summary>
    Para remover o pod outrademo rodamos:
  </summary>

  ```bash
  kubectl delete pod outrademo
  ```{{}}

</details>


<details open>
  <summary>
    Para remover o pod meu-podinho rodamos:
  </summary>

  ```bash
  kubectl delete pod meu-podinho
  ```{{}}

</details>

<details open>
  <summary>
    Para remover o pod vaidarruim rodamos:
  </summary>

  ```bash
  kubectl delete pod vaidarruim
  ```{{}}

</details>

<details open>
  <summary>
    Para remover todos de uma vez rodamos:
  </summary>

  ```bash
  kubectl delete \
    pod/demo \
    pod/outrademo \
    pod/meu-podinho \
    pod/vaidarruim
  ```{{}}

</details>
