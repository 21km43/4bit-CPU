//`include "cmos_74hc00.v"
//`include "cmos_74hc02.v"
//`include "cmos_74hc86.v"
//`include "cmos_74hc04.v"

module alu
(
   input A0,
   input A1,
   input A2,
   input A3,
   output Ax3cB,
   output Ax3dB,
   output Ax3eB,
   input B0,
   input B1,
   input B2,
   input B3,
   output OF,
   input S0,
   input S1,
   input S2,
   output Y0,
   output Y1,
   output Y2,
   output Y3
);


   wire _A0x3cB0;
   wire _A0x3dB0;
   wire _A0x3eB0;
   wire _A1x3cB1;
   wire _A1x3dB1;
   wire _A1x3eB1;
   wire _A2x3cB2;
   wire _A2x3dB2;
   wire _A2x3eB2;
   wire _ADD0;
   wire _ADD1;
   wire _ADD2;
   wire _ADD3;
   wire _AND0;
   wire _AND1;
   wire _AND2;
   wire _AND3;
   wire _MOVx2c_OR0;
   wire _MOVx2c_OR1;
   wire _MOVx2c_OR2;
   wire _MOVx2c_OR3;
   wire _XOR0;
   wire _XOR1;
   wire _XOR2;
   wire _XOR3;
   wire GND;
   assign GND = 0;
   wire Net__U1_Pad2_;
   wire Net__U1_Pad3_;
   wire Net__U1_Pad5_;
   wire Net__U1_Pad6_;
   wire Net__U1_Pad8_;
   wire Net__U1_Pad10_;
   wire Net__U1_Pad11_;
   wire Net__U1_Pad13_;
   wire Net__U2_Pad3_;
   wire Net__U2_Pad4_;
   wire Net__U2_Pad6_;
   wire Net__U2_Pad8_;
   wire Net__U2_Pad9_;
   wire Net__U2_Pad11_;
   wire Net__U2_Pad12_;
   wire Net__U8_Pad10_;
   wire Net__U8_Pad12_;
   wire Net__U10_Pad10_;
   wire Net__U10_Pad12_;
   wire Net__U11_Pad1_;
   wire Net__U11_Pad3_;
   wire Net__U11_Pad5_;
   wire Net__U11_Pad10_;
   wire Net__U11_Pad12_;
   wire Net__U12_Pad1_;
   wire Net__U12_Pad4_;
   wire Net__U12_Pad10_;
   wire Net__U12_Pad11_;
   wire Net__U12_Pad12_;
   wire Net__U12_Pad13_;
   wire Net__U13_Pad2_;
   wire Net__U13_Pad4_;
   wire Net__U13_Pad6_;
   wire Net__U13_Pad8_;
   wire Net__U13_Pad10_;
   wire Net__U13_Pad12_;
   wire Net__U14_Pad1_;
   wire Net__U14_Pad9_;
   wire Net__U14_Pad10_;
   wire Net__U14_Pad12_;
   wire Net__U14_Pad13_;
   wire Net__U15_Pad1_;
   wire Net__U15_Pad3_;
   wire Net__U15_Pad5_;
   wire Net__U15_Pad6_;
   wire Net__U15_Pad9_;
   wire Net__U15_Pad10_;
   wire Net__U15_Pad11_;
   wire Net__U15_Pad13_;
   wire Net__U16_Pad3_;
   wire Net__U16_Pad10_;
   wire Net__U17_Pad5_;
   wire Net__U17_Pad9_;
   wire Net__U17_Pad11_;
   wire Net__U17_Pad13_;
   wire Net__U18_Pad10_;
   wire Net__U18_Pad12_;
   wire Net__U19_Pad3_;
   wire Net__U19_Pad10_;
   wire Net__U20_Pad3_;
   wire Net__U20_Pad6_;
   wire Net__U20_Pad8_;
   wire Net__U20_Pad11_;
   wire Net__U21_Pad10_;
   wire Net__U21_Pad12_;
   wire Net__U22_Pad3_;
   wire Net__U22_Pad6_;
   wire Net__U22_Pad8_;
   wire Net__U22_Pad11_;
   wire Net__U23_Pad3_;
   wire Net__U23_Pad6_;
   wire Net__U23_Pad8_;
   wire Net__U23_Pad11_;
   wire Net__U24_Pad3_;
   wire Net__U24_Pad6_;
   wire Net__U24_Pad8_;
   wire Net__U24_Pad11_;
   wire Net__U25_Pad3_;
   wire Net__U25_Pad6_;
   wire Net__U25_Pad8_;
   wire Net__U25_Pad11_;
   wire Net__U26_Pad3_;
   wire Net__U26_Pad6_;
   wire Net__U26_Pad8_;
   wire Net__U26_Pad11_;
   wire Net__U27_Pad3_;
   wire Net__U27_Pad6_;
   wire Net__U27_Pad8_;
   wire Net__U27_Pad11_;
   wire VCC;
   assign VCC = 1;


   J1 _J1(A0, A1, A2, A3);

   J2 _J2(B0, B1, B2, B3);

   J3 _J3(S0, S1, S2);

   J4 _J4(VCC, GND);

   J5 _J5(Y0, Y1, Y2, Y3, OF);

   J6 _J6(Ax3cB, Ax3dB, Ax3eB);

   U1 _U1(A0, Net__U1_Pad2_, Net__U1_Pad3_, A1, Net__U1_Pad5_, Net__U1_Pad6_,
    Net__U1_Pad8_, A2, Net__U1_Pad10_, Net__U1_Pad11_, A3,
    Net__U1_Pad13_);

   U2 _U2(S2, _XOR0, Net__U2_Pad3_, Net__U2_Pad4_, _XOR1, Net__U2_Pad6_,
    Net__U2_Pad8_, Net__U2_Pad9_, _XOR2, Net__U2_Pad11_, Net__U2_Pad12_,
    _XOR3);

   U3 _U3(A0, Net__U1_Pad2_, _XOR0, A1, Net__U1_Pad5_, _XOR1, _XOR2, A2,
    Net__U1_Pad10_, _XOR3, A3, Net__U1_Pad13_);

   U4 _U4(S2, _XOR0, _ADD0, Net__U2_Pad4_, _XOR1, _ADD1, _ADD2, Net__U2_Pad9_,
    _XOR2, _ADD3, Net__U2_Pad12_, _XOR3);

   U5 _U5(Net__U1_Pad3_, Net__U2_Pad3_, Net__U2_Pad4_, Net__U1_Pad6_,
    Net__U2_Pad6_, Net__U2_Pad9_, Net__U2_Pad12_, Net__U1_Pad8_, Net__U2_Pad8_, OF,
    Net__U1_Pad11_, Net__U2_Pad11_);

   U6 _U6(Net__U20_Pad3_, Net__U13_Pad2_, _MOVx2c_OR0, Net__U20_Pad6_,
    Net__U13_Pad4_, _MOVx2c_OR1, _MOVx2c_OR2, Net__U20_Pad8_, Net__U13_Pad6_,
    _MOVx2c_OR3, Net__U20_Pad11_, Net__U13_Pad8_);

   U7 _U7(B0, S2, Net__U1_Pad2_, B1, S2, Net__U1_Pad5_, Net__U1_Pad10_, B2, S2,
    Net__U1_Pad13_, B3, S2);

   U8 _U8(A0, Net__U11_Pad1_, B0, Net__U11_Pad5_, Net__U11_Pad3_, _A0x3cB0,
    _A0x3eB0, Net__U11_Pad10_, Net__U8_Pad10_, A1, Net__U8_Pad12_, B1);

   U9 _U9(Net__U8_Pad10_, B1, Net__U14_Pad9_, A1, Net__U8_Pad12_,
    Net__U14_Pad13_, Net__U15_Pad1_, Net__U14_Pad9_, Net__U14_Pad13_,
    Net__U15_Pad3_, Net__U14_Pad1_, _A0x3dB0);

   U10 _U10(Net__U1_Pad3_, _AND0, Net__U1_Pad6_, _AND1, Net__U1_Pad8_, _AND2,
    _AND3, Net__U1_Pad11_, Net__U10_Pad10_, A2, Net__U10_Pad12_, B2);

   U11 _U11(Net__U11_Pad1_, B0, Net__U11_Pad3_, A0, Net__U11_Pad5_,
    Net__U11_Pad10_, Net__U11_Pad12_, Net__U11_Pad3_, Net__U11_Pad10_, _A0x3dB0,
    Net__U11_Pad12_, Net__U11_Pad12_);

   U12 _U12(Net__U12_Pad1_, S0, S1, Net__U12_Pad4_, S0, Net__U12_Pad12_,
    Net__U12_Pad11_, S1, Net__U12_Pad10_, Net__U12_Pad11_, Net__U12_Pad12_,
    Net__U12_Pad13_);

   U13 _U13(B0, Net__U13_Pad2_, B1, Net__U13_Pad4_, B2, Net__U13_Pad6_,
    Net__U13_Pad8_, B3, Net__U13_Pad10_, A3, Net__U13_Pad12_, B3);

   U14 _U14(Net__U14_Pad1_, _A0x3cB0, Net__U14_Pad10_, Net__U14_Pad1_, _A0x3eB0,
    Net__U14_Pad12_, _A1x3cB1, Net__U14_Pad9_, Net__U14_Pad10_, _A1x3eB1,
    Net__U14_Pad12_, Net__U14_Pad13_);

   U15 _U15(Net__U15_Pad1_, Net__U14_Pad1_, Net__U15_Pad3_, _A1x3dB1,
    Net__U15_Pad5_, Net__U15_Pad6_, _A2x3dB2, Net__U15_Pad9_, Net__U15_Pad10_,
    Net__U15_Pad11_, Ax3dB, Net__U15_Pad13_);

   U16 _U16(Net__U10_Pad10_, B2, Net__U16_Pad3_, A2, Net__U10_Pad12_,
    Net__U16_Pad10_, Net__U15_Pad5_, Net__U16_Pad3_, Net__U16_Pad10_,
    Net__U15_Pad9_, Net__U15_Pad6_, _A1x3dB1);

   U17 _U17(S0, Net__U12_Pad11_, S1, Net__U12_Pad12_, Net__U17_Pad5_, Y0, Y1,
    Net__U17_Pad9_, Y2, Net__U17_Pad11_, Y3, Net__U17_Pad13_);

   U18 _U18(Net__U15_Pad6_, _A1x3cB1, Net__U18_Pad10_, Net__U15_Pad6_, _A1x3eB1,
    Net__U18_Pad12_, _A2x3cB2, Net__U16_Pad3_, Net__U18_Pad10_, _A2x3eB2,
    Net__U18_Pad12_, Net__U16_Pad10_);

   U19 _U19(Net__U13_Pad10_, B3, Net__U19_Pad3_, A3, Net__U13_Pad12_,
    Net__U19_Pad10_, Net__U15_Pad11_, Net__U19_Pad3_, Net__U19_Pad10_,
    Net__U15_Pad13_, Net__U15_Pad10_, _A2x3dB2);

   U20 _U20(A0, S2, Net__U20_Pad3_, A1, S2, Net__U20_Pad6_, Net__U20_Pad8_, A2,
    S2, Net__U20_Pad11_, A3, S2);

   U21 _U21(Net__U15_Pad10_, _A2x3cB2, Net__U21_Pad10_, Net__U15_Pad10_,
    _A2x3eB2, Net__U21_Pad12_, Ax3cB, Net__U19_Pad3_, Net__U21_Pad10_, Ax3eB,
    Net__U21_Pad12_, Net__U19_Pad10_);

   U22 _U22(_ADD0, Net__U12_Pad13_, Net__U22_Pad3_, _ADD1, Net__U12_Pad13_,
    Net__U22_Pad6_, Net__U22_Pad8_, _ADD2, Net__U12_Pad13_, Net__U22_Pad11_, _ADD3,
    Net__U12_Pad13_);

   U23 _U23(_AND0, Net__U12_Pad10_, Net__U23_Pad3_, _AND1, Net__U12_Pad10_,
    Net__U23_Pad6_, Net__U23_Pad8_, _AND2, Net__U12_Pad10_, Net__U23_Pad11_, _AND3,
    Net__U12_Pad10_);

   U24 _U24(_XOR0, Net__U12_Pad4_, Net__U24_Pad3_, _XOR1, Net__U12_Pad4_,
    Net__U24_Pad6_, Net__U24_Pad8_, _XOR2, Net__U12_Pad4_, Net__U24_Pad11_, _XOR3,
    Net__U12_Pad4_);

   U25 _U25(_MOVx2c_OR0, Net__U12_Pad1_, Net__U25_Pad3_, _MOVx2c_OR1,
    Net__U12_Pad1_, Net__U25_Pad6_, Net__U25_Pad8_, _MOVx2c_OR2, Net__U12_Pad1_,
    Net__U25_Pad11_, _MOVx2c_OR3, Net__U12_Pad1_);

   U26 _U26(Net__U23_Pad3_, Net__U22_Pad3_, Net__U26_Pad3_, Net__U23_Pad6_,
    Net__U22_Pad6_, Net__U26_Pad6_, Net__U26_Pad8_, Net__U23_Pad8_, Net__U22_Pad8_,
    Net__U26_Pad11_, Net__U23_Pad11_, Net__U22_Pad11_);

   U27 _U27(Net__U25_Pad3_, Net__U24_Pad3_, Net__U27_Pad3_, Net__U25_Pad6_,
    Net__U24_Pad6_, Net__U27_Pad6_, Net__U27_Pad8_, Net__U25_Pad8_, Net__U24_Pad8_,
    Net__U27_Pad11_, Net__U25_Pad11_, Net__U24_Pad11_);

   U28 _U28(Net__U17_Pad5_, Net__U27_Pad3_, Net__U26_Pad3_, Net__U17_Pad9_,
    Net__U27_Pad6_, Net__U26_Pad6_, Net__U27_Pad8_, Net__U26_Pad8_,
    Net__U17_Pad11_, Net__U27_Pad11_, Net__U26_Pad11_, Net__U17_Pad13_);


endmodule


module J1(
   inout Pin_1,
   inout Pin_2,
   inout Pin_3,
   inout Pin_4);

   // NOTE: The following symbols are MACRO definition(s)!
   // To use them, precede them with a `
   `define Pin_ {Pin_4, Pin_3, Pin_2, Pin_1}

// No implementation

   `undef Pin_

endmodule

module J2(
   inout Pin_1,
   inout Pin_2,
   inout Pin_3,
   inout Pin_4);

   // NOTE: The following symbols are MACRO definition(s)!
   // To use them, precede them with a `
   `define Pin_ {Pin_4, Pin_3, Pin_2, Pin_1}

// No implementation

   `undef Pin_

endmodule

module J3(
   inout Pin_1,
   inout Pin_2,
   inout Pin_3);

   // NOTE: The following symbols are MACRO definition(s)!
   // To use them, precede them with a `
   `define Pin_ {Pin_3, Pin_2, Pin_1}

// No implementation

   `undef Pin_

endmodule

module J4(
   inout Pin_1,
   inout Pin_2);

   // NOTE: The following symbols are MACRO definition(s)!
   // To use them, precede them with a `
   `define Pin_ {Pin_2, Pin_1}

// No implementation

   `undef Pin_

endmodule

module J5(
   inout Pin_1,
   inout Pin_2,
   inout Pin_3,
   inout Pin_4,
   inout Pin_5);

   // NOTE: The following symbols are MACRO definition(s)!
   // To use them, precede them with a `
   `define Pin_ {Pin_5, Pin_4, Pin_3, Pin_2, Pin_1}

// No implementation

   `undef Pin_

endmodule

module J6(
   inout Pin_1,
   inout Pin_2,
   inout Pin_3);

   // NOTE: The following symbols are MACRO definition(s)!
   // To use them, precede them with a `
   `define Pin_ {Pin_3, Pin_2, Pin_1}

// No implementation

   `undef Pin_

endmodule

module U1(
   input _1,
   input _2,
   output _3,
   input _4,
   input _5,
   output _6,
   output _8,
   input _9,
   input _10,
   output _11,
   input _12,
   input _13);

cmos_74hc00 gate(_1, _2, _4, _5, _9, _10, _12, _13, _3, _5, _8, _11);

endmodule

module U2(
   input _1,
   input _2,
   output _3,
   input _4,
   input _5,
   output _6,
   output _8,
   input _9,
   input _10,
   output _11,
   input _12,
   input _13);

cmos_74hc00 gate(_1, _2, _4, _5, _9, _10, _12, _13, _3, _5, _8, _11);

endmodule

module U3(
   input _1,
   input _2,
   output _3,
   input _4,
   input _5,
   output _6,
   output _8,
   input _9,
   input _10,
   output _11,
   input _12,
   input _13);

cmos_74hc86 gate(_1, _2, _4, _5, _9, _10, _12, _13, _3, _5, _8, _11);

endmodule

module U4(
   input _1,
   input _2,
   output _3,
   input _4,
   input _5,
   output _6,
   output _8,
   input _9,
   input _10,
   output _11,
   input _12,
   input _13);

cmos_74hc86 gate(_1, _2, _4, _5, _9, _10, _12, _13, _3, _5, _8, _11);

endmodule

module U5(
   input _1,
   input _2,
   output _3,
   input _4,
   input _5,
   output _6,
   output _8,
   input _9,
   input _10,
   output _11,
   input _12,
   input _13);

cmos_74hc00 gate(_1, _2, _4, _5, _9, _10, _12, _13, _3, _5, _8, _11);

endmodule

module U6(
   input _1,
   input _2,
   output _3,
   input _4,
   input _5,
   output _6,
   output _8,
   input _9,
   input _10,
   output _11,
   input _12,
   input _13);

cmos_74hc00 gate(_1, _2, _4, _5, _9, _10, _12, _13, _3, _5, _8, _11);

endmodule

module U7(
   input _1,
   input _2,
   output _3,
   input _4,
   input _5,
   output _6,
   output _8,
   input _9,
   input _10,
   output _11,
   input _12,
   input _13);

cmos_74hc86 gate(_1, _2, _4, _5, _9, _10, _12, _13, _3, _5, _8, _11);

endmodule

module U8(
   input _1,
   output _2,
   input _3,
   output _4,
   input _5,
   output _6,
   output _8,
   input _9,
   output _10,
   input _11,
   output _12,
   input _13);

cmos_74hc04 gate(_1, _3, _5, _9, _11, _13, _2, _4, _6, _8, _10, _12);

endmodule

module U9(
   input _1,
   input _2,
   output _3,
   input _4,
   input _5,
   output _6,
   output _8,
   input _9,
   input _10,
   output _11,
   input _12,
   input _13);

cmos_74hc00 gate(_1, _2, _4, _5, _9, _10, _12, _13, _3, _5, _8, _11);

endmodule

module U10(
   input _1,
   output _2,
   input _3,
   output _4,
   input _5,
   output _6,
   output _8,
   input _9,
   output _10,
   input _11,
   output _12,
   input _13);

cmos_74hc04 gate(_1, _3, _5, _9, _11, _13, _2, _4, _6, _8, _10, _12);

endmodule

module U11(
   input _1,
   input _2,
   output _3,
   input _4,
   input _5,
   output _6,
   output _8,
   input _9,
   input _10,
   output _11,
   input _12,
   input _13);

cmos_74hc00 gate(_1, _2, _4, _5, _9, _10, _12, _13, _3, _5, _8, _11);

endmodule

module U12(
   output _1,
   input _2,
   input _3,
   output _4,
   input _5,
   input _6,
   input _8,
   input _9,
   output _10,
   input _11,
   input _12,
   output _13);

cmos_74hc02 gate(_2, _3, _5, _6, _8, _9, _11, _12, _1, _4, _10, _13);

endmodule

module U13(
   input _1,
   output _2,
   input _3,
   output _4,
   input _5,
   output _6,
   output _8,
   input _9,
   output _10,
   input _11,
   output _12,
   input _13);

cmos_74hc04 gate(_1, _3, _5, _9, _11, _13, _2, _4, _6, _8, _10, _12);

endmodule

module U14(
   input _1,
   input _2,
   output _3,
   input _4,
   input _5,
   output _6,
   output _8,
   input _9,
   input _10,
   output _11,
   input _12,
   input _13);

cmos_74hc00 gate(_1, _2, _4, _5, _9, _10, _12, _13, _3, _5, _8, _11);

endmodule

module U15(
   input _1,
   output _2,
   input _3,
   output _4,
   input _5,
   output _6,
   output _8,
   input _9,
   output _10,
   input _11,
   output _12,
   input _13);

cmos_74hc04 gate(_1, _3, _5, _9, _11, _13, _2, _4, _6, _8, _10, _12);

endmodule

module U16(
   input _1,
   input _2,
   output _3,
   input _4,
   input _5,
   output _6,
   output _8,
   input _9,
   input _10,
   output _11,
   input _12,
   input _13);

cmos_74hc00 gate(_1, _2, _4, _5, _9, _10, _12, _13, _3, _5, _8, _11);

endmodule

module U17(
   input _1,
   output _2,
   input _3,
   output _4,
   input _5,
   output _6,
   output _8,
   input _9,
   output _10,
   input _11,
   output _12,
   input _13);

cmos_74hc04 gate(_1, _3, _5, _9, _11, _13, _2, _4, _6, _8, _10, _12);

endmodule

module U18(
   input _1,
   input _2,
   output _3,
   input _4,
   input _5,
   output _6,
   output _8,
   input _9,
   input _10,
   output _11,
   input _12,
   input _13);

cmos_74hc00 gate(_1, _2, _4, _5, _9, _10, _12, _13, _3, _5, _8, _11);

endmodule

module U19(
   input _1,
   input _2,
   output _3,
   input _4,
   input _5,
   output _6,
   output _8,
   input _9,
   input _10,
   output _11,
   input _12,
   input _13);

cmos_74hc00 gate(_1, _2, _4, _5, _9, _10, _12, _13, _3, _5, _8, _11);

endmodule

module U20(
   input _1,
   input _2,
   output _3,
   input _4,
   input _5,
   output _6,
   output _8,
   input _9,
   input _10,
   output _11,
   input _12,
   input _13);

cmos_74hc00 gate(_1, _2, _4, _5, _9, _10, _12, _13, _3, _5, _8, _11);

endmodule

module U21(
   input _1,
   input _2,
   output _3,
   input _4,
   input _5,
   output _6,
   output _8,
   input _9,
   input _10,
   output _11,
   input _12,
   input _13);

cmos_74hc00 gate(_1, _2, _4, _5, _9, _10, _12, _13, _3, _5, _8, _11);

endmodule

module U22(
   input _1,
   input _2,
   output _3,
   input _4,
   input _5,
   output _6,
   output _8,
   input _9,
   input _10,
   output _11,
   input _12,
   input _13);

cmos_74hc00 gate(_1, _2, _4, _5, _9, _10, _12, _13, _3, _5, _8, _11);

endmodule

module U23(
   input _1,
   input _2,
   output _3,
   input _4,
   input _5,
   output _6,
   output _8,
   input _9,
   input _10,
   output _11,
   input _12,
   input _13);

cmos_74hc00 gate(_1, _2, _4, _5, _9, _10, _12, _13, _3, _5, _8, _11);

endmodule

module U24(
   input _1,
   input _2,
   output _3,
   input _4,
   input _5,
   output _6,
   output _8,
   input _9,
   input _10,
   output _11,
   input _12,
   input _13);

cmos_74hc00 gate(_1, _2, _4, _5, _9, _10, _12, _13, _3, _5, _8, _11);

endmodule

module U25(
   input _1,
   input _2,
   output _3,
   input _4,
   input _5,
   output _6,
   output _8,
   input _9,
   input _10,
   output _11,
   input _12,
   input _13);

cmos_74hc00 gate(_1, _2, _4, _5, _9, _10, _12, _13, _3, _5, _8, _11);

endmodule

module U26(
   input _1,
   input _2,
   output _3,
   input _4,
   input _5,
   output _6,
   output _8,
   input _9,
   input _10,
   output _11,
   input _12,
   input _13);

cmos_74hc00 gate(_1, _2, _4, _5, _9, _10, _12, _13, _3, _5, _8, _11);

endmodule

module U27(
   input _1,
   input _2,
   output _3,
   input _4,
   input _5,
   output _6,
   output _8,
   input _9,
   input _10,
   output _11,
   input _12,
   input _13);

cmos_74hc00 gate(_1, _2, _4, _5, _9, _10, _12, _13, _3, _5, _8, _11);

endmodule

module U28(
   output _1,
   input _2,
   input _3,
   output _4,
   input _5,
   input _6,
   input _8,
   input _9,
   output _10,
   input _11,
   input _12,
   output _13);

cmos_74hc02 gate(_2, _3, _5, _6, _8, _9, _11, _12, _1, _4, _10, _13);

endmodule

