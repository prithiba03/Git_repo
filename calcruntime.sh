#!/bin/bash

START=$(date +%s)
END=$(date +%s)
DIFF=$(( $END - $START ))
DIFF=$(( $DIFF / 60 ))

echo $END
echo $START
echo $DIFF
