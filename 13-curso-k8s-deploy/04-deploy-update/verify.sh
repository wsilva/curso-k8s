#!/bin/bash

{
    (if (( $(kubectl get rs -l app=demoapp --no-headers | wc -l) != 2 )); then exit 1; fi)
}