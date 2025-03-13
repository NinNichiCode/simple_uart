# Simple UART (Universal Asynchronous Receiver Transmitter) Design in Verilog

This project presents a basic UART transmitter and receiver design implemented in Verilog. It is useful for serial communication in digital systems and is compatible with standard UART protocols.

## Overview
UART is a hardware communication protocol used for asynchronous serial communication between digital devices. This project implements a simplified version of a UART transmitter and receiver, designed for ease of understanding and practical application in embedded systems or FPGA projects.

## Features
- Baud rate generator using clock divider
- Configurable baud rate (via divisor)
- UART Transmitter (TX) logic
- UART Receiver (RX) logic
- Bit structure in uart:
  - Start bit (bit 0)
  - Data length (8 bit)
  - Parity (even, odd, none)
  - Stop bit (1 or 2 bit) (bit 1)

## file
- `uart.v`: design
- `uart_tb.sv`: testbench
- `vsim.do` simulation script

## Verification
- Generates sample data to transmit
- Observes transmitted bits and verifies correctness
- Simulated using QuestaSim

## Tools Used
- Verilog/SystemVerilog
- QuestaSim / ModelSim for simulation

