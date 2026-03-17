#!/bin/bash

{
    (if (( $(kubectl get rs --no-headers | grep 'deploy-recreate-' | wc -l) != 2 )); then exit 1; fi)
}