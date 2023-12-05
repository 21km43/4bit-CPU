module ALU(A, B, S, Q, OF, CMP);

input wire [3:0] A;
input wire [3:0] B;
input wire [2:0] S;

output wire [3:0] Q;
output wire OF;
output wire [2:0] CMP;

wire [3:0] ADD_SUB;
wire [3:0] AND;
wire [3:0] MOV_OR;
wire [3:0] XOR;

assign {OF, ADD_SUB} = S[2] ? A - B : A + B;
assign AND = A & B;
assign MOV_OR = S[2] ? (A | B) : B;
assign XOR = A ^ B;

assign Q = (S[1:0] == 2'b00) ? MOV_OR :
           (S[1:0] == 2'b01) ? AND :
           (S[1:0] == 2'b10) ? XOR :
           (S[1:0] == 2'b11) ? ADD_SUB :
                               4'bz ;

assign CMP[0] = A == B;
assign CMP[1] = A > B;
assign CMP[2] = A < B;

endmodule


module Decoder(A, OF, CMP, regwrite, flagwrite, flagdata, btaken, jump, flag_out, flag_in, memwrite, memtoreg, im, S);

input wire [3:0] A;
input wire OF;
input wire [2:0] CMP;

output wire regwrite;
output wire flagwrite;
output wire flagdata;
output wire btaken;
output wire jump;
output wire flag_out;
output wire flag_in;
output wire memwrite;
output wire memtoreg;
output wire im;
output wire [2:0] S;

assign regwrite = ~A[3];
assign flagwrite = (A[3] & A[2]) | (A[1] & A[0]) | (~A[3] & A[2] & A[1] & ~A[0]);
assign flagdata = (A[1:0] == 2'b00) ? CMP[0] :
                  (A[1:0] == 2'b01) ? CMP[1] :
                  (A[1:0] == 2'b10) ? CMP[2] :
                  (A[1:0] == 2'b11) ? OF :
                                      1'bz;

assign btaken = A[3] & ~A[2] & ~A[1];
assign jump = btaken & A[0];

assign flag_out = A[3] & ~A[2] & A[1] & A[0];
assign flag_in = ~A[3] & A[2] & A[1] & ~A[0];
assign memwrite = A[3] & ~A[2] & A[1] & ~A[0];
assign memtoreg = ~A[3] & A[2] & ~A[1] & A[0];
assign im = ~A[3] & ~A[2] & ~A[1] & ~A[0];

assign S = A[2:0];

endmodule


module Register(CLK, RST, regwrite, flagwrite, flagdata, btaken, jump, im, rd, D, PC, srca, srcb);

input wire CLK;
input wire RST;
input wire regwrite;
input wire flagwrite;
input wire flagdata;
input wire btaken;
input wire jump;
input wire im;
input wire [3:0] rd;
input wire [3:0] D;

reg [3:0] register [1:0];
reg regf;

output reg [3:0] PC;
output wire [3:0] srca;
output wire [3:0] srcb;

wire srcrega;
wire srcregb;
wire destreg;
assign srcrega = D[2];
assign srcregb = D[0];
assign destreg = D[2] & ~im;

always @(posedge CLK)
    begin
        if (~RST)
            begin
                PC <= 4'd0;
                register[0] <= 4'd0;
                register[1] <= 4'd0;
                regf <= 1'b0;
            end
        else
            begin
                PC <= ((regf & btaken) | jump) ? D : (PC + 4'b0001);
                regf <= flagwrite ? flagdata : regf;
                register[destreg] <= regwrite ? rd : register[destreg];
            end
    end

assign srca = register[srcrega];
assign srcb = ~im ? register[srcregb] : D;

endmodule


module RAM(RST, CLK, addr, memwrite, memtoreg, writedata, readdata);

input wire RST;
input wire CLK;
input wire [1:0] addr;
input wire memwrite;
input wire memtoreg;
input wire [3:0] writedata;
output wire [3:0] readdata;

reg [3:0] mem [3:0];

always @(posedge CLK)
    begin
    if (~RST)
        begin
            mem[0] <= 4'd0;
            mem[1] <= 4'd0;
            mem[2] <= 4'd0;
            mem[3] <= 4'd0;
        end
    else
        begin
            mem[addr] <= memwrite ? writedata : mem[addr];
        end
    end

assign readdata = memtoreg ? mem[addr] : 4'bzzzz;

endmodule

module Datapath(RST, CLK);

input wire RST;
input wire CLK;

wire [3:0] A;
wire [3:0] D;
wire [3:0] srca;
wire [3:0] srcb;

wire [2:0] S;
wire [3:0] ALU_Q;
wire OF;
wire [2:0] CMP;

wire regwrite;
wire flagwrite;
wire flagdata;
wire btaken;
wire jump;
wire flag_out;
wire flag_in;
wire memwrite;
wire memtoreg;
wire im;

wire [3:0] PC;

wire [3:0] MEM_Q;

ROM rom(PC, A, D);
Decoder decoder(A, OF, CMP, regwrite, flagwrite, flagdata, btaken, jump, flag_out, flag_in, memwrite, memtoreg, im, S);
ALU alu(srca, srcb, S, ALU_Q, OF, CMP);
RAM ram(RST, CLK, D[1:0], memwrite, memtoreg, srca, MEM_Q);
Register register(CLK, RST, regwrite, flagwrite, flagdata, btaken, jump, im, memtoreg ? MEM_Q : ALU_Q, D, PC, srca, srcb);

endmodule
