 Counter Using Clock Gating :  
module clock_gate ( input  clk, input  en,  input  clr, output gclk); 
reg en_latch;   // Latch enable when clock is low (safe clock gating)
always @(negedge clk or posedge clr) begin 
if (clr)   
en_latch <= 1'b0;  
else         
en_latch <= en; 
end // Gated clock    
assign gclk = clk & en_latch; 
endmodule

module counter(clk,en,clr,q); 
input clk,en,clr; 
output [3:0]q; 
wire gclk; 
wire t0,t1,t2,t3;
clock_gate cg1(clk,en,clr,gclk); 
assign t0=en;
assign t1=en&q[0]; 
assign t2=en&q[0]&q[1];
assign t3=en&q[0]&q[1]&q[2]; 
tff tf1(t0,gclk,clr,q[0]);
tff tf2(t1,gclk,clr,q[1]); 
tff tf3(t2,gclk,clr,q[2]); 
tff tf4(t3,gclk,clr,q[3]);
endmodule  

module tff(t,clk,clr,q); 
input clk,clr,t;
output q; 
reg q; 
always@(negedge clk or posedge clr) begin 
if(clr==1) 
q<=0; 
else  
case(t)   
1'b0:q<=q;   
1'b1:q<=~q; 
endcase 
end 
endmodule 
