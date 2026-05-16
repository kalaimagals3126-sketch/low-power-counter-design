module testbench();
reg clk,en,clr; 
wire [3:0]q;
counter aa(clk,en,clr,q);
initial begin
clk=0;clr=1;en=0; 
#1 clr=0; 
#10 en=1; 
#160 en=0;
end 
always #5clk=~clk; 
endmodule 
