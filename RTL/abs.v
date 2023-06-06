module absolute_value(
  input signed [8:0] value,
  output [8:0] abs_value
);

reg [8:0] abs_val;

  always @* begin
    if (value < 0) begin
      abs_val = -value;
    end else begin
      abs_val <= value;
    end
  end

assign abs_value = abs_val;

endmodule
