#!/bin/bash

{
    (if kubectl get cm nginx-config; then exit 1; fi) &&
    (if kubectl get pod phpfpm-nginx; then exit 1; fi) 
}