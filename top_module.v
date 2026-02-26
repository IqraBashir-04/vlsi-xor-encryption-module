`timescale 1ns/1ps

module top_module;

    reg  [7:0] plaintext;
    reg  [7:0] key;
    wire [7:0] ciphertext;
    wire [7:0] decrypted_text;

    // Instantiate encryption module
    encryption enc (
        .plaintext(plaintext),
        .key(key),
        .ciphertext(ciphertext)
    );

    // Instantiate decryption module
    decryption dec (
        .ciphertext(ciphertext),
        .key(key),
        .decrypted_text(decrypted_text)
    );

    initial begin
        // Test Case 1
        plaintext = 8'b11001100;
        key       = 8'b10101010;

        #50;

        // Test Case 2
        plaintext = 8'b11110000;
        key       = 8'b01010101;

        #50;

        // Test Case 3
        plaintext = 8'b00001111;
        key       = 8'b11111111;

        #50;

        // Keep simulation alive
        #100;
    end

endmodule