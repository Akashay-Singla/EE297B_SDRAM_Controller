
module sys_console (
	clk_clk,
	reset_reset_n,
	master_0_clk_clk,
	master_0_clk_reset_reset,
	master_0_master_address,
	master_0_master_readdata,
	master_0_master_read,
	master_0_master_write,
	master_0_master_writedata,
	master_0_master_waitrequest,
	master_0_master_readdatavalid,
	master_0_master_byteenable,
	master_0_master_reset_reset);	

	input		clk_clk;
	input		reset_reset_n;
	input		master_0_clk_clk;
	input		master_0_clk_reset_reset;
	output	[31:0]	master_0_master_address;
	input	[31:0]	master_0_master_readdata;
	output		master_0_master_read;
	output		master_0_master_write;
	output	[31:0]	master_0_master_writedata;
	input		master_0_master_waitrequest;
	input		master_0_master_readdatavalid;
	output	[3:0]	master_0_master_byteenable;
	output		master_0_master_reset_reset;
endmodule
