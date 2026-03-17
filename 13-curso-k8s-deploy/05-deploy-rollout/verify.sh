#!/bin/bash

kubectl rollout history deployment deploy-demoapp | grep "regravando mensagem"