//This code written by ChatGPT


module keypad_decoder (input [6:0] keypad, output [2:0] decoded_key);
  always @* begin
    case (keypad)
      7'b0001001: decoded_key = 3'b000; // key 1 pressed
      7'b0010010: decoded_key = 3'b001; // key 2 pressed
      7'b0100010: decoded_key = 3'b010; // key 3 pressed
      7'b0010100: decoded_key = 3'b011; // key 4 pressed
      7'b0001100: decoded_key = 3'b100; // key 5 pressed
      7'b0101000: decoded_key = 3'b101; // key 6 pressed
      7'b1001000: decoded_key = 3'b110; // key 7 pressed
      7'b0101100: decoded_key = 3'b111; // key 8 pressed
      default: decoded_key = 3'b000;
    endcase
  end
endmodule