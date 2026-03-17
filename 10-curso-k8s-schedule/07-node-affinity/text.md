## Influenciando no scheduler

Trabalhando com node affinity

<details open>
  <summary>
    Vamos criar um pod com o node affinity destacado
  </summary>

  ```yaml{11-20}
  apiVersion: v1
  kind: Pod
  metadata:
    name: nodeaffinity
    labels:
      curso: k8s
  spec:
    containers:
    - name: demoapp
      image: wfsilva/demoapp:v2
    affinity:
      nodeAffinity:
        requiredDuringSchedulingIgnoredDuringExecution:
          nodeSelectorTerms:
          - matchExpressions:
            - key: kubernetes.io/az-name
              operator: In
              values:
              - spo-az1
              - spo-az2
  ```{{}}
  
  > Disponível em https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/pod/pod-node-affinity.yaml

  Criando o pod

  ```bash
  kubectl apply -f \
  https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/pod/pod-node-affinity.yaml
  ```{{}}

  Vamos conferir o watch loop no outro terminal

</details>

<details open>
  <summary>
    Checando os eventos do pod em pending
  </summary>

  ```bash
  kubectl describe pod \
    nodeaffinity | grep -A 20 Event
  ```{{}}
</details>

<details open>
  <summary>
    Adicionando uma label spo-az2 ao node01
  </summary>

  ```bash
  kubectl label nodes \
    node01 \
    kubernetes.io/az-name=spo-az2
  ```{{}}

  Vamos novamente conferir o watch loop no outro terminal

  Devemos ver o pod rodando
  
</details>
