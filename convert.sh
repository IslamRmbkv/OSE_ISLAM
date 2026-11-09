#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <number> <unit>"
    exit 1
fi

val=$1
unit=$2

if (( val < 0 )); then
    echo "Number must not be negative"
    exit 3
fi

case "$unit" in
    km|KM)
        res=$(( val * 1000 ))
        echo "$val km = $res m"
        ;;
    m|M)
        res=$(( val * 100 ))
        echo "$val m = $res cm"
        ;;
    h|H)
        res=$(( val * 60 ))
        echo "$val h = $res min"
        ;;
    min|MIN)
        res=$(( val * 60 ))
        echo "$val min = $res s"
        ;;
    kg|KG)
        res=$(( val * 1000 ))
        echo "$val kg = $res g"
        ;;
    *)
        echo "Unknown unit: $unit"
        echo "Units: km m h min kg"
        exit 2
        ;;
esac