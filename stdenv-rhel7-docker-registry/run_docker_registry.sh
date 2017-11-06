#!/bin/bash

sudo docker run -d -v /opt/registry:/var/lib/registry -p 8000:5000 registry
