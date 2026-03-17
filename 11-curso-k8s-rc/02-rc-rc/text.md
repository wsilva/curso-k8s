## Replication Controller

Gerenciando replication controllers.

<details open>
  <summary>
    Vamos criar um replication controller que seleciona a label app = demoapp
  </summary>

  Arquivo yaml disponível em https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/rc/rc.yaml

  ```bash
  kubectl apply -f \
  https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/rc/rc.yaml
  ```{{}}

 Vamos voltar no outro terminal para ver os pods criados.

 Como já existia um pod com a label app=demoapp então o controller criou só mais 2.

</details>
