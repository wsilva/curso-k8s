#!/bin/bash

{
    kubectl get pod phpfpm-nginx &&
    kubectl get cm nginx-config
}