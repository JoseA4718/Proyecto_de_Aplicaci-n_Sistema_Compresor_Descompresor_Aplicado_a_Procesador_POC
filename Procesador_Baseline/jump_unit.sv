module jump_unit(
	input FlagZ,
	input JumpCD,
	input JumpCI,
	input JumpI,
	output PCSource
	);
	
	//Operates PC according to flags
	
	assign PCSource = ((FlagZ ^ JumpCD) & JumpCD) | JumpI | (FlagZ & JumpCI);
	
endmodule