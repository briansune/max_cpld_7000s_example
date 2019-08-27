module test(
	clock,
	reset,
	led
);
	
	input clock;
	input reset;
	output led;
	
	reg [15 : 0] counter;
	
	always@(posedge clock or negedge reset)begin
		
		if(!reset)begin
			counter <= 16'b0;
		end else begin
			counter <= counter + 'b1;
		end
	end
	
	assign led = counter[15];
	
endmodule

