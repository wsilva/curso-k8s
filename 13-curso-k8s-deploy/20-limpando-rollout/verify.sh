#!/bin/bash

{
    (if kubectl get deploy deploy-rolling; then exit 1; fi)
}

