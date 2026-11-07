#!/bin/sh

context=$(kubectl config get-contexts -o name | fzf)

if [ $? -ne 0 ]; then
    echo "Invalid context name"
    return 1
fi

kubectl config use-context $context
