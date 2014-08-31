#!/bin/bash
amixer get Master |  awk '/Mono.+/ {print $6=="[off]"?$6:$4}'
