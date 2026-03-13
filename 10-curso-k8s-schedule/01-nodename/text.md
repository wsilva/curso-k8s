## Influenciando no scheduler

Usando nodename para decidir em qual node o pod deve rodar.

<details open>
  <summary>
    Vamos listar os nodes disponíveis
  </summary>

  ```plain
  kubectl get node -o wide
  ```{{}}

</details>

<details open>
  <summary>
    Vamos criar um pod que rode no controlplane ao invés de rodar no node 01
  </summary>

  ```bash{14}
  cat <<FIM | tee pod.yaml
  apiVersion: v1
  kind: Pod
  metadata:
    name: demo-schedule
    labels:
      chave: valor
  spec:
    containers:
    - name: demo-schedule
      image: wfsilva/demoapp:v1
      ports:
        - containerPort: 8080
    nodeName: controlplane
  FIM
  ```{{exec}}

</details>

<details open>
  <summary>
    Criando o pod
  </summary>

  ```bash
  kubectl apply -f pod.yaml
  ```{{}}
</details>

<details open>
  <summary>
    Conferindo em qual node o pod caiu
  </summary>

  ```bash
  watch "kubectl get pod -o wide"
  ```{{}}
</details>
