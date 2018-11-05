#!/bin/bash
for kar in $(pactl list | grep karta | cut -d'.' -f1); do pactl set-sink-volume $kar toggle; done
