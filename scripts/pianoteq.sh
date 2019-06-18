#!/bin/bash

cd ~/mag/pianoteq
taskset -c 0,1,4,5 ./Pianoteq\ 6\ STAGE --fullscreen --multicore max
