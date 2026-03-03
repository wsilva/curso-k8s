#!/bin/bash

{
    curl http://localhost:8080 | grep DemoApp &&
    curl http://localhost:8888 | grep Kubernetaaaa
}
