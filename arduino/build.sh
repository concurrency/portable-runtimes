#!/bin/sh -e
# Compile the firmware for the Arduino.

cleanup() 
{
	make -k distclean || true
	unset ACLOCAL
	autoreconf -vfi
}

MCUS="atmega328p atmega644p atmega1280"
FCPUS="16000000 8000000"
#FCPUS="16000000"

mcu="atmega328p"
	for fcpu in $FCPUS
	do
		cleanup
		./configure \
			--host=avr \
			--with-bytecode-addr=0x4F00 \
			--with-mcu=$mcu \
			--with-fcpu=$fcpu \
			"$@"
		make
		make firmware.hex
	done

mcu="atmega644p"
	for fcpu in $FCPUS
	do
		cleanup
		./configure \
			--host=avr \
			--with-mcu=$mcu \
			--with-fcpu=$fcpu \
			"$@"
		make
		make firmware.hex
	done

mcu="atmega1280"
	for fcpu in $FCPUS
	do
		cleanup
		./configure \
			--host=avr \
			--with-bytecode-addr=0x5500 \
			--with-mcu=$mcu \
			--with-fcpu=$fcpu \
			"$@"
		make
		make firmware.hex
	done

