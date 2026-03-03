## Atualizando pod

Alterando mais uma vez o yaml do pod.

- em `spec.containers.image` mudamos de `wfsilva/demoapp:v1` para `yabadabadoo`
- em `metadata.name` mudamos de `outrademo` para `vaidarruim`

```yaml{4,10}
apiVersion: v1
kind: Pod
metadata:
  name: vaidarruim # era outrademo
  labels:
    chave: novovalor # era valor
spec:
  containers:
  - name: web
    image: yabadabadoo # era wfsilva/demoapp:v1
    ports:
      - containerPort: 8080
```

<details open>
  <summary>
    Vamos criar novo pod
  </summary>

  ```plain
  kubectl apply -f /root/pod.yaml
  ```{{}}

</details>

Olhando o terminal 1 vemos o status em `ImagePullBackOff`

<details open>
  <summary>
    No terminal 2 vamos descrever o pod
  </summary>

  ```plain
  kubectl describe pod vaidarruim
  ```{{}}

</details>


<details open>
  <summary>
    Filtrando pelo Status
  </summary>

  ```plain
  kubectl describe pod vaidarruim | grep Status
  ```{{}}

</details>

<details open>
  <summary>
    Filtrando pelas condições
  </summary>

  ```plain
  kubectl describe pod vaidarruim | grep Conditions -A 5
  ```{{}}

</details>

<details open>
  <summary>
    Filtrando pelos eventos
  </summary>

  ```plain
  kubectl describe pod vaidarruim | grep Events -A 15
  ```{{}}

</details>
