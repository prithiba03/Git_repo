#!/bin/bash

log() {
     echo $* [`date +%Y-%m-%d\ %H:%M:%S`] 
}

log "my string to be logged"
echo $$ , $LINENO

