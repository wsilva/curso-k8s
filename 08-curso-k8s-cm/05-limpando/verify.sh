#!/bin/bash

{
    (if kubectl get cm demo-literal; then exit 1; fi) &&
    (if kubectl get cm demo-file; then exit 1; fi) &&
    (if kubectl get pod cm-literal; then exit 1; fi) &&
    (if kubectl get pod cm-file; then exit 1; fi)
}
