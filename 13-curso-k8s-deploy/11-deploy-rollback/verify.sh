#!/bin/bash

{
    (if kubectl get pod | grep ImagePullBackOff; then exit 1; fi)
}
