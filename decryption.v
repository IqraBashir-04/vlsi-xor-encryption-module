`timescale 1ns/1ps

module decryption (
    input  [7:0] ciphertext,
    input  [7:0] key,
    output [7:0] decrypted_text
);

    // XOR-based decryption
    assign decrypted_text = ciphertext ^ key;

endmodule