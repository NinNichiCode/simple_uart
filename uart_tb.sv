module uart2_tb;
 
    reg clk = 0;
    reg start = 0;
    reg [7:0] txin;
    wire [7:0] rxout;
    wire rxdone, txdone;
    wire txrx;
   
    top dut (clk, start, txin, txrx, txrx, rxout, rxdone, txdone);
    integer i = 0;
 
    initial begin
        $display("=== UART Testbench Start ===");
        $display("Time\tTXIN\tRXOUT\tTXDONE\tRXDONE");

        start = 1;
        for (i = 0; i < 10; i = i + 1) begin
            txin = $urandom_range(10, 200);
            @(posedge txdone);
            @(posedge rxdone);
            #10; // Chờ để quan sát tín hiệu
            $display("%0t\t%0d\t%0d\t%b\t%b", $time, txin, rxout, txdone, rxdone);
        end

        $display("=== UART Testbench Finished ===");
        $stop;
    end

    always #5 clk = ~clk; // Clock 100 MHz

endmodule
