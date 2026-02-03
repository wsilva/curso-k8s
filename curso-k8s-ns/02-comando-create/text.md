## Comando create

Opções do comando create:

```plain
kubectl create --help
```{{exec}}

Filtrando apenas os comandos disponíveis com  `grep`:

```plain
kubectl create --help | grep -A 15 Available
```{{exec}}

Opções do subcomando `namespace` para o comando `create`:

```plain
kubectl create namespace --help
```{{exec}}

Filtrando pelo usage:

```plain
kubectl create namespace --help | grep -A 2 Usage
```{{exec}}
