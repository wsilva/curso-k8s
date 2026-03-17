#!/bin/bash

{
    (if kubectl get deploy deploy-demoapp; then exit 1; fi)
}
