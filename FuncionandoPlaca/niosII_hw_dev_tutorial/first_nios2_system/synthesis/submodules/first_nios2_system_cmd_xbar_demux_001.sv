// (C) 2001-2013 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License Subscription 
// Agreement, Altera MegaCore Function License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


// $Id: //acds/rel/12.1sp1/ip/merlin/altera_merlin_demultiplexer/altera_merlin_demultiplexer.sv.terp#1 $
// $Revision: #1 $
// $Date: 2012/10/10 $
// $Author: swbranch $

// -------------------------------------
// Merlin Demultiplexer
//
// Asserts valid on the appropriate output
// given a one-hot channel signal.
// -------------------------------------

`timescale 1 ns / 1 ns

// ------------------------------------------
// Generation parameters:
//   output_name:         first_nios2_system_cmd_xbar_demux_001
//   ST_DATA_W:           100
//   ST_CHANNEL_W:        9
//   NUM_OUTPUTS:         9
//   VALID_WIDTH:         1
// ------------------------------------------

//------------------------------------------
// Message Supression Used
// QIS Warnings
// 15610 - Warning: Design contains x input pin(s) that do not drive logic
//------------------------------------------

module first_nios2_system_cmd_xbar_demux_001
(
    // -------------------
    // Sink
    // -------------------
    input  [1-1      : 0]   sink_valid,
    input  [100-1    : 0]   sink_data, // ST_DATA_W=100
    input  [9-1 : 0]   sink_channel, // ST_CHANNEL_W=9
    input                         sink_startofpacket,
    input                         sink_endofpacket,
    output                        sink_ready,

    // -------------------
    // Sources 
    // -------------------
    output reg                      src0_valid,
    output reg [100-1    : 0] src0_data, // ST_DATA_W=100
    output reg [9-1 : 0] src0_channel, // ST_CHANNEL_W=9
    output reg                      src0_startofpacket,
    output reg                      src0_endofpacket,
    input                           src0_ready,

    output reg                      src1_valid,
    output reg [100-1    : 0] src1_data, // ST_DATA_W=100
    output reg [9-1 : 0] src1_channel, // ST_CHANNEL_W=9
    output reg                      src1_startofpacket,
    output reg                      src1_endofpacket,
    input                           src1_ready,

    output reg                      src2_valid,
    output reg [100-1    : 0] src2_data, // ST_DATA_W=100
    output reg [9-1 : 0] src2_channel, // ST_CHANNEL_W=9
    output reg                      src2_startofpacket,
    output reg                      src2_endofpacket,
    input                           src2_ready,

    output reg                      src3_valid,
    output reg [100-1    : 0] src3_data, // ST_DATA_W=100
    output reg [9-1 : 0] src3_channel, // ST_CHANNEL_W=9
    output reg                      src3_startofpacket,
    output reg                      src3_endofpacket,
    input                           src3_ready,

    output reg                      src4_valid,
    output reg [100-1    : 0] src4_data, // ST_DATA_W=100
    output reg [9-1 : 0] src4_channel, // ST_CHANNEL_W=9
    output reg                      src4_startofpacket,
    output reg                      src4_endofpacket,
    input                           src4_ready,

    output reg                      src5_valid,
    output reg [100-1    : 0] src5_data, // ST_DATA_W=100
    output reg [9-1 : 0] src5_channel, // ST_CHANNEL_W=9
    output reg                      src5_startofpacket,
    output reg                      src5_endofpacket,
    input                           src5_ready,

    output reg                      src6_valid,
    output reg [100-1    : 0] src6_data, // ST_DATA_W=100
    output reg [9-1 : 0] src6_channel, // ST_CHANNEL_W=9
    output reg                      src6_startofpacket,
    output reg                      src6_endofpacket,
    input                           src6_ready,

    output reg                      src7_valid,
    output reg [100-1    : 0] src7_data, // ST_DATA_W=100
    output reg [9-1 : 0] src7_channel, // ST_CHANNEL_W=9
    output reg                      src7_startofpacket,
    output reg                      src7_endofpacket,
    input                           src7_ready,

    output reg                      src8_valid,
    output reg [100-1    : 0] src8_data, // ST_DATA_W=100
    output reg [9-1 : 0] src8_channel, // ST_CHANNEL_W=9
    output reg                      src8_startofpacket,
    output reg                      src8_endofpacket,
    input                           src8_ready,


    // -------------------
    // Clock & Reset
    // -------------------
    (*altera_attribute = "-name MESSAGE_DISABLE 15610" *) // setting message suppression on clk
    input clk,
    (*altera_attribute = "-name MESSAGE_DISABLE 15610" *) // setting message suppression on reset
    input reset

);

    localparam NUM_OUTPUTS = 9;
    wire [NUM_OUTPUTS - 1 : 0] ready_vector;

    // -------------------
    // Demux
    // -------------------
    always @* begin
        src0_data          = sink_data;
        src0_startofpacket = sink_startofpacket;
        src0_endofpacket   = sink_endofpacket;
        src0_channel       = sink_channel >> NUM_OUTPUTS;

        src0_valid         = sink_channel[0] && sink_valid;

        src1_data          = sink_data;
        src1_startofpacket = sink_startofpacket;
        src1_endofpacket   = sink_endofpacket;
        src1_channel       = sink_channel >> NUM_OUTPUTS;

        src1_valid         = sink_channel[1] && sink_valid;

        src2_data          = sink_data;
        src2_startofpacket = sink_startofpacket;
        src2_endofpacket   = sink_endofpacket;
        src2_channel       = sink_channel >> NUM_OUTPUTS;

        src2_valid         = sink_channel[2] && sink_valid;

        src3_data          = sink_data;
        src3_startofpacket = sink_startofpacket;
        src3_endofpacket   = sink_endofpacket;
        src3_channel       = sink_channel >> NUM_OUTPUTS;

        src3_valid         = sink_channel[3] && sink_valid;

        src4_data          = sink_data;
        src4_startofpacket = sink_startofpacket;
        src4_endofpacket   = sink_endofpacket;
        src4_channel       = sink_channel >> NUM_OUTPUTS;

        src4_valid         = sink_channel[4] && sink_valid;

        src5_data          = sink_data;
        src5_startofpacket = sink_startofpacket;
        src5_endofpacket   = sink_endofpacket;
        src5_channel       = sink_channel >> NUM_OUTPUTS;

        src5_valid         = sink_channel[5] && sink_valid;

        src6_data          = sink_data;
        src6_startofpacket = sink_startofpacket;
        src6_endofpacket   = sink_endofpacket;
        src6_channel       = sink_channel >> NUM_OUTPUTS;

        src6_valid         = sink_channel[6] && sink_valid;

        src7_data          = sink_data;
        src7_startofpacket = sink_startofpacket;
        src7_endofpacket   = sink_endofpacket;
        src7_channel       = sink_channel >> NUM_OUTPUTS;

        src7_valid         = sink_channel[7] && sink_valid;

        src8_data          = sink_data;
        src8_startofpacket = sink_startofpacket;
        src8_endofpacket   = sink_endofpacket;
        src8_channel       = sink_channel >> NUM_OUTPUTS;

        src8_valid         = sink_channel[8] && sink_valid;

    end

    // -------------------
    // Backpressure
    // -------------------
    assign ready_vector[0] = src0_ready;
    assign ready_vector[1] = src1_ready;
    assign ready_vector[2] = src2_ready;
    assign ready_vector[3] = src3_ready;
    assign ready_vector[4] = src4_ready;
    assign ready_vector[5] = src5_ready;
    assign ready_vector[6] = src6_ready;
    assign ready_vector[7] = src7_ready;
    assign ready_vector[8] = src8_ready;

    assign sink_ready = |(sink_channel & ready_vector);

endmodule


