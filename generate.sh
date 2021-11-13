#!/bin/bash

# Your area code and prefix (first 3 digits of your phone number)
PREFIX=321987
# Your own phone number to not be excluded.
PHONE=3219876540

for b in $(seq 0 9); do
# first 500
	echo "BEGIN:VCARD
VERSION:3.0
N:Spam;${b}000;;;
FN:${b}000 Spam
ORG:Spam Calls
" > SpamCalls${b}000.vcf
	for p in $(seq -f "%0.f" ${PREFIX}${b}000 ${PREFIX}${b}499); do
		[ $p -eq $PHONE ] || echo "TEL;type=CELL;type=VOICE:"$p >> SpamCalls${b}000.vcf
	done
	echo "END:VCARD" >> SpamCalls${b}000.vcf

# Second 500
	echo "BEGIN:VCARD
VERSION:3.0
N:Spam;${b}500;;;
FN:${b}500 Spam
ORG:Spam Calls
" > SpamCalls${b}500.vcf
	for p in $(seq -f "%0.f" ${PREFIX}${b}500 ${PREFIX}${b}999); do
		[ $p -eq $PHONE ] || echo "TEL;type=CELL;type=VOICE:"$p >> SpamCalls${b}500.vcf
	done
	echo "END:VCARD" >> SpamCalls${b}500.vcf
done
