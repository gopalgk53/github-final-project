#!/bin/bash

# Simple Interest Calculator

echo "Enter the Principal amount:"
read principal

echo "Enter the Rate of Interest (per annum):"
read rate

echo "Enter the Time period (in years):"
read time

# Calculate Simple Interest using formula: (P * R * T) / 100
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount (Principal + Interest)
total=$(echo "scale=2; $principal + $interest" | bc)

echo "-----------------------------------"
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time years"
echo "-----------------------------------"
echo "Simple Interest  : $interest"
echo "Total Amount     : $total"
