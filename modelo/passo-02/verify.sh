#!/bin/bash

if kubectl get pod meu-podinho; then exit 1; fi