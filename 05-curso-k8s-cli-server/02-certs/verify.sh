#!/bin/bash

{
    (if [ ! -f "/root/ca.crt" ]; then exit 1; fi) &&
    (if [ ! -f "/root/client.crt" ]; then exit 1; fi) &&
    (if [ ! -f "/root/client.key" ]; then exit 1; fi)
}