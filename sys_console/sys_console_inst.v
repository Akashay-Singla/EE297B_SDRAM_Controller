	sys_console u0 (
		.clk_clk                       (<connected-to-clk_clk>),                       //                   clk.clk
		.reset_reset_n                 (<connected-to-reset_reset_n>),                 //                 reset.reset_n
		.master_0_clk_clk              (<connected-to-master_0_clk_clk>),              //          master_0_clk.clk
		.master_0_clk_reset_reset      (<connected-to-master_0_clk_reset_reset>),      //    master_0_clk_reset.reset
		.master_0_master_address       (<connected-to-master_0_master_address>),       //       master_0_master.address
		.master_0_master_readdata      (<connected-to-master_0_master_readdata>),      //                      .readdata
		.master_0_master_read          (<connected-to-master_0_master_read>),          //                      .read
		.master_0_master_write         (<connected-to-master_0_master_write>),         //                      .write
		.master_0_master_writedata     (<connected-to-master_0_master_writedata>),     //                      .writedata
		.master_0_master_waitrequest   (<connected-to-master_0_master_waitrequest>),   //                      .waitrequest
		.master_0_master_readdatavalid (<connected-to-master_0_master_readdatavalid>), //                      .readdatavalid
		.master_0_master_byteenable    (<connected-to-master_0_master_byteenable>),    //                      .byteenable
		.master_0_master_reset_reset   (<connected-to-master_0_master_reset_reset>)    // master_0_master_reset.reset
	);

