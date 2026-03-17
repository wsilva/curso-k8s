#!/bin/bash

{
    (if kubectl get rs rs-demoapp; then exit 1; fi)
}

