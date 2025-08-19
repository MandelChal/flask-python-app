#!/bin/bash
sudo docker stop myapp-container || true
sudo docker rm myapp-container || true