#!/bin/bash
source pt0.4.1
conda activate surreal
export PATH="$PATH:$HOME/.local/bin"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/.local/lib:$HOME/.local/lib64"
export LDFLAGS="-L$HOME/.local/lib -L$HOME/.local/lib64"
export CPATH="$CPATH:$HOME/.local/include"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/mnt/lustre/fanghongyu/.mujoco/mjpro150/bin
