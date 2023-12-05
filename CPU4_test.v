module ROM(PC, A, D);

input wire [3:0] PC;
output wire [3:0] A;
output wire [3:0] D;

reg [7:0] rom_data [15:0];

initial begin
    // Write code here
    rom_data[0]  = 8'b00000100;
    rom_data[1]  = 8'b10100000;
    rom_data[2]  = 8'b00000001;
    rom_data[3]  = 8'b10100010;
    rom_data[4]  = 8'b01010001;
    rom_data[5]  = 8'b00110001;
    rom_data[6]  = 8'b10100001;
    rom_data[7]  = 8'b01010000;
    rom_data[8]  = 8'b11000001;
    rom_data[9]  = 8'b10001101;
    rom_data[10] = 8'b01010010;
    rom_data[11] = 8'b00110100;
    rom_data[12] = 8'b10010100;
    rom_data[13] = 8'b01010001;
    rom_data[14] = 8'b11000001;
    rom_data[15] = 8'b10011110;
end

assign A = rom_data[PC][7:4];
assign D = rom_data[PC][3:0];

endmodule

module CPU4_test;

reg RST;
reg CLK;

Datapath cpu(RST, CLK);

always #1 CLK = ~CLK;

initial begin
    CLK = 0;

    RST = 0;
    #2 RST = 1;
    
    #150 $finish;
end

initial begin
    $monitor("CLK=%d", CLK);
    $dumpfile("cpu4.vcd");
    $dumpvars(0, CPU4_test);
end

endmodule
