#!/bin/bash

kubectl get pod demo | grep Running && kubectl get pod | grep web | grep Running