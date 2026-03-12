## Secrets

Secrets por linha de comando lendo arquivos.

<details open>
  <summary>
    Vamos criar outros 2 arquivos
  </summary>

  ```plain
  echo -n 'usuario' > user.txt
  echo -n 'super-senha' > pass.txt
  ```{{}}
</details>


<details open>
  <summary>
    Criando secret pela linha de comando usando os arquivos
  </summary>

  ```plain
  kubectl create secret \
    generic cli-file \
    --from-file=./user.txt \
    --from-file=./pass.txt
  ```{{}}
</details>
