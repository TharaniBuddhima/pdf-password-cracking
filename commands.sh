#!/bin/bash

# Extract PDF hash
pdf2john security_report.pdf > pdfhash.txt

# View extracted hash
cat pdfhash.txt

# Crack password
john --wordlist=/usr/share/wordlists/rockyou.txt pdfhash.txt

# Show results
john --show pdfhash.txt > cracked.txt


