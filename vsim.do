vlib work

# Xóa file log cũ 
vdel -all

# Compile tất cả các file SystemVerilog
vlog -sv uart.v uart_tb.sv

# Load testbench trong chế độ UVM
vsim -uvmcontrol=all uart_tb


# Thêm tất cả tín hiệu vào waveform
#add wave -r /*

# Chạy mô phỏng
run -all
