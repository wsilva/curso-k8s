#!/bin/bash

{
    (if kubectl get rc rc-demoapp; then exit 1; fi)
}

