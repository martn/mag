#!/bin/bash

cd ~/mag/pianoteq
taskset -c 0,1,2,3 ./Pianoteq\ 6\ STAGE --fullscreen --multicore max
