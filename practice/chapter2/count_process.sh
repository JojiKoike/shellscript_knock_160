#!/bin/bash


ps | awk '$4=="sleep" {print $1}' | sort -u | wc -l