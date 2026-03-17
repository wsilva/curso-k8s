#!/bin/bash

{
    (if (( $(kubectl get pod -l app=demoapp --no-headers | wc -l) != 5 )); then exit 1; fi)
}