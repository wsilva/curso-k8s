#!/bin/bash

{
    (if kubectl get pod envvars; then exit 1; fi) 
}