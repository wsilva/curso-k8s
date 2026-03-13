## Influenciando no scheduler

Usando nodeSelector para decidir em qual node o pod deve rodar.
>Vamos usar outro terminal

<details open>
  <summary>
    Vamos criar um um novo pod
  </summary>

  ```bash{14-15}
  cat <<FIM | tee outropod.yaml
  apiVersion: v1
  kind: Pod
  metadata:
    name: outrademo
    labels:
      chave: valor
  spec:
    containers:
    - name: web
      image: wfsilva/demoapp:v1
      ports:
        - containerPort: 8080
    nodeSelector:
      disktype: ssd
  FIM
  ```{{exec}}
</details>

<details open>
  <summary>
    Criando o outro pod com base no arquivo
  </summary>

  ```bash
  kubectl apply -f outropod.yaml
  ```{{}}
</details>

<details open>
  <summary>
    Conferindo o estado do pod
  </summary>

  Vamos deixar listando nodes e pods em um terminal separado.

  ```bash
  watch -n 1 'kubectl get pod -o wide; kubectl get node --show-labels'
  ```{{}}

  Vemos o pod em pending. Vamos ver porque no outro terminal.

  ```bash
  kubectl describe pod outrademo | grep Events -A 5
  ```{{}}
</details>

<details open>
  <summary>
    Ajustando o node adicionando a label que o pod procura
  </summary>

  ```bash
  kubectl label node node01 disktype=ssd
  ```{{}}

  Voltando no outro terminal vemos o node com a nova label e o pod rodando lá.
</details>
