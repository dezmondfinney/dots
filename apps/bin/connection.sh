#!/bin/bash
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    echo "SSH"
elif [ -n "$MOSH_CLIENT" ]; then
    echo "Mosh"
else
    echo "Local"
fi
