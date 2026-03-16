## Comando create

Executamos no termimal 2 para listar os `subcomandos` do comando `create`:

```bash
kubectl create --help | grep -A 15 Available
```{{}}

Executamos também para saber como é o uso do comando `create`:

```bash
kubectl create --help | grep -A 3 Usage
```{{}}

> Só conseguimos criar pods pelo comando `run` ou por usando um arquivo `yaml`.
