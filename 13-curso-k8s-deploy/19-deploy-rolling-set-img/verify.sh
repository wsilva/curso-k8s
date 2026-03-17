#!/bin/bash

{
    (if (( $(kubectl get rs --no-headers | grep 'deploy-rolling-' | wc -l) != 2 )); then exit 1; fi)
}