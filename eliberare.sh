#!/bin/bash

cowsay "PID-ul procesului pentru care eliberam restrictiile?"
read ID
cpulimit -p ${ID} -l 100 -b 
