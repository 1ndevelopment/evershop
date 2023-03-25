#!/usr/bin/env bash

echo "Setting up Evershop container . . ."
docker build -t evershop .
docker run --name evershop evershop:latest