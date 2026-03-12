#!/bin/bash

{
    (if kubectl get secret cli-file; then exit 1; fi) &&
    (if kubectl get secret cli-literal; then exit 1; fi) &&
    (if kubectl get secret poryaml; then exit 1; fi) &&
    (if kubectl get secret registry; then exit 1; fi) &&
    (if kubectl get pod secret-env; then exit 1; fi) &&
    (if kubectl get pod secret-volume; then exit 1; fi)
}

