/* AUTOMATICALLY GENERATED VERILOG-2001 SOURCE CODE.
** GENERATED BY CLASH 0.99.3. DO NOT MODIFY.
*/
module DataSender_updateState
    ( // Inputs
      input [41:0] ds 
    , input [104:0] state 

      // Outputs
    , output wire [104:0] \#case_alt  
    );
  wire  transmissionStart;
  wire  transmissionDone;
  wire signed [63:0] ds3;
  wire [39:0] ds1;
  wire signed [63:0] ds4;
  reg [64:0] \#case_alt_0 ;
  wire [39:0] \#case_alt_1 ;
  wire  \#case_scrut ;
  wire [39:0] inD;
  wire [64:0] ds2;
  reg [64:0] \#case_alt_2 ;
  reg [64:0] \#case_alt_3 ;
  reg [39:0] \#case_alt_4 ;
  reg [64:0] \#app_arg ;
  reg [39:0] \#app_arg_0 ;
  wire  \#case_alt_2_selection_res ;

  assign transmissionStart = ds[0:0];

  assign transmissionDone = ds[1:1];

  assign ds3 = ds2[63:0];

  assign ds1 = state[104:65];

  assign ds4 = ds3;

  always @(*) begin
    if(\#case_scrut )
      \#case_alt_0  = {1'b1,(ds4 - 64'sd1)};
    else
      \#case_alt_0  = ds2;
  end

  // rotateR begin
  wire [2*40-1:0] u;
  assign u = {ds1,ds1} >> (64'sd8);
  assign \#case_alt_1  = u[40-1 : 0];
  // rotateR end

  assign \#case_scrut  = transmissionDone == (1'b1);

  assign inD = ds[41:2];

  assign ds2 = state[64:0];

  assign \#case_alt_2_selection_res  = transmissionStart == (1'b1);

  always @(*) begin
    if(\#case_alt_2_selection_res )
      \#case_alt_2  = {1'b1,64'sd4};
    else
      \#case_alt_2  = {1'b0,64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx};
  end

  always @(*) begin
    case(ds4)
      64'sd0 : \#case_alt_3  = {1'b0,64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx};
      default : \#case_alt_3  = \#case_alt_0 ;
    endcase
  end

  always @(*) begin
    if(\#case_scrut )
      \#case_alt_4  = \#case_alt_1 ;
    else
      \#case_alt_4  = ds1;
  end

  always @(*) begin
    case(ds2[64:64])
      1'b0 : \#app_arg  = \#case_alt_2 ;
      default : \#app_arg  = \#case_alt_3 ;
    endcase
  end

  always @(*) begin
    case(ds2[64:64])
      1'b0 : \#app_arg_0  = inD;
      default : \#app_arg_0  = \#case_alt_4 ;
    endcase
  end

  assign \#case_alt  = {\#app_arg_0 ,\#app_arg };
endmodule

