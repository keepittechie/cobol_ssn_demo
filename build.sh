#!/bin/bash
# Build script for COBOL SSN Demo
# Created by Josh from KeepItTechie

echo "Compiling COBOL program..."
cobc -x -free ssn_check.cob -o ssn_check
echo "Done. Run with ./run.sh"
