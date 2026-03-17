#!/bin/bash

{
    (if kubectl get deploy deploy-recreate; then exit 1; fi)
}

