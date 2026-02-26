
`timescale 1ns/1ps

module encryption (
    input  [7:0] plaintext,
    input  [7:0] key,
    output [7:0] ciphertext
);

    // XOR-based encryption
    assign ciphertext = plaintext ^ key;

endmodule