#!/bin/bash

{
    (if (( $(kubectl get pod -l tier=web --no-headers | wc -l) != 5 )); then exit 1; fi)
}