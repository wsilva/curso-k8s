#!/bin/bash

{
    (if kubectl get pod envvars-resources; then exit 1; fi) 
}