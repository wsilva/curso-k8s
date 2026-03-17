## Influenciando no scheduler

Trabalhando com pod affinity

<details open>
  <summary>
    Vamos criar um pod com o POD ANTI AFFINITY destacado
  </summary>

  ```yaml{9-18}
  apiVersion: v1
  kind: Pod
  metadata:
    name: podaffinity
  spec:
    containers:
    - name: demoapp
      image: wfsilva/demoapp:v3
    affinity:
      podAntiAffinity:
        requiredDuringSchedulingIgnoredDuringExecution:
        - labelSelector:
            matchExpressions:
            - key: curso
              operator: In
              values:
              - k8s
          topologyKey: "kubernetes.io/hostname"
  ```{{}}
  
  > Disponível em https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/pod/pod-pod-affinity.yaml

  Criando o pod

  ```bash
  kubectl apply -f \
  https://raw.githubusercontent.com/wsilva/kubernetes-curso-exemplos/main/pod/pod-pod-affinity.yaml
  ```{{}}

  Vamos conferir o watch loop no outro terminal

  Vemos o pod rodando em outro que não o do pod anterior.

</details>

