#!/bin/bash

kubectl describe node controlplane | grep Taint | grep none