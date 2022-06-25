	component sys_console is
		port (
			clk_clk                       : in  std_logic                     := 'X';             -- clk
			reset_reset_n                 : in  std_logic                     := 'X';             -- reset_n
			master_0_clk_clk              : in  std_logic                     := 'X';             -- clk
			master_0_clk_reset_reset      : in  std_logic                     := 'X';             -- reset
			master_0_master_address       : out std_logic_vector(31 downto 0);                    -- address
			master_0_master_readdata      : in  std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			master_0_master_read          : out std_logic;                                        -- read
			master_0_master_write         : out std_logic;                                        -- write
			master_0_master_writedata     : out std_logic_vector(31 downto 0);                    -- writedata
			master_0_master_waitrequest   : in  std_logic                     := 'X';             -- waitrequest
			master_0_master_readdatavalid : in  std_logic                     := 'X';             -- readdatavalid
			master_0_master_byteenable    : out std_logic_vector(3 downto 0);                     -- byteenable
			master_0_master_reset_reset   : out std_logic                                         -- reset
		);
	end component sys_console;

	u0 : component sys_console
		port map (
			clk_clk                       => CONNECTED_TO_clk_clk,                       --                   clk.clk
			reset_reset_n                 => CONNECTED_TO_reset_reset_n,                 --                 reset.reset_n
			master_0_clk_clk              => CONNECTED_TO_master_0_clk_clk,              --          master_0_clk.clk
			master_0_clk_reset_reset      => CONNECTED_TO_master_0_clk_reset_reset,      --    master_0_clk_reset.reset
			master_0_master_address       => CONNECTED_TO_master_0_master_address,       --       master_0_master.address
			master_0_master_readdata      => CONNECTED_TO_master_0_master_readdata,      --                      .readdata
			master_0_master_read          => CONNECTED_TO_master_0_master_read,          --                      .read
			master_0_master_write         => CONNECTED_TO_master_0_master_write,         --                      .write
			master_0_master_writedata     => CONNECTED_TO_master_0_master_writedata,     --                      .writedata
			master_0_master_waitrequest   => CONNECTED_TO_master_0_master_waitrequest,   --                      .waitrequest
			master_0_master_readdatavalid => CONNECTED_TO_master_0_master_readdatavalid, --                      .readdatavalid
			master_0_master_byteenable    => CONNECTED_TO_master_0_master_byteenable,    --                      .byteenable
			master_0_master_reset_reset   => CONNECTED_TO_master_0_master_reset_reset    -- master_0_master_reset.reset
		);

