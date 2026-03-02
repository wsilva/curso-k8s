#!/bin/bash

{
    (if kubectl get pod demo; then exit 1; fi) &&
    (if kubectl get pod outrademo; then exit 1; fi) &&
    (if kubectl get pod vaidarruim; then exit 1; fi) &&
    (if kubectl get pod meu-podinho; then exit 1; fi)
}