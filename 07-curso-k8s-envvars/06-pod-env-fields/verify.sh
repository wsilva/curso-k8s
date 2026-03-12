#!/bin/bash

{
    (if kubectl get pod envvars-field; then exit 1; fi) 
}