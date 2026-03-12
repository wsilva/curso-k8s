#!/bin/bash

{
    (if kubectl get pod demo-oom; then exit 1; fi) &&
    (if kubectl get pod podzao; then exit 1; fi) 
}