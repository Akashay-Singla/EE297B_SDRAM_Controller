// sys_console.v

// Generated using ACDS version 21.1 842

`timescale 1 ps / 1 ps
module sys_console (
		input  wire        clk_clk,                       //                   clk.clk
		input  wire        master_0_clk_clk,              //          master_0_clk.clk
		input  wire        master_0_clk_reset_reset,      //    master_0_clk_reset.reset
		output wire [31:0] master_0_master_address,       //       master_0_master.address
		input  wire [31:0] master_0_master_readdata,      //                      .readdata
		output wire        master_0_master_read,          //                      .read
		output wire        master_0_master_write,         //                      .write
		output wire [31:0] master_0_master_writedata,     //                      .writedata
		input  wire        master_0_master_waitrequest,   //                      .waitrequest
		input  wire        master_0_master_readdatavalid, //                      .readdatavalid
		output wire [3:0]  master_0_master_byteenable,    //                      .byteenable
		output wire        master_0_master_reset_reset,   // master_0_master_reset.reset
		input  wire        reset_reset_n                  //                 reset.reset_n
	);

	sys_console_master_0 #(
		.USE_PLI     (0),
		.PLI_PORT    (50000),
		.FIFO_DEPTHS (2)
	) master_0 (
		.clk_clk              (master_0_clk_clk),              //          clk.clk
		.clk_reset_reset      (master_0_clk_reset_reset),      //    clk_reset.reset
		.master_address       (master_0_master_address),       //       master.address
		.master_readdata      (master_0_master_readdata),      //             .readdata
		.master_read          (master_0_master_read),          //             .read
		.master_write         (master_0_master_write),         //             .write
		.master_writedata     (master_0_master_writedata),     //             .writedata
		.master_waitrequest   (master_0_master_waitrequest),   //             .waitrequest
		.master_readdatavalid (master_0_master_readdatavalid), //             .readdatavalid
		.master_byteenable    (master_0_master_byteenable),    //             .byteenable
		.master_reset_reset   (master_0_master_reset_reset)    // master_reset.reset
	);

endmodule
