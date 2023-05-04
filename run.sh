#!/bin/bash
make all
./ray_tracing > image.ppm
open image.ppm