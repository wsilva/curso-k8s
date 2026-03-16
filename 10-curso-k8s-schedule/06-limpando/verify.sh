#!/bin/bash

{
    (if kubectl get deploy web; then exit 1; fi) &&
    (if kubectl get pod demo; then exit 1; fi) &&
    (if kubectl get pod demo-schedule; then exit 1; fi)
}

