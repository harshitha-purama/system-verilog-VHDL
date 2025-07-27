//---------------------
// D Flip-Flop (with async reset)
module d_ff (
    input  logic clk,
    input  logic rst,
    input  logic d,
    output logic q,
    output logic qn
);
    always_ff @(posedge clk or posedge rst) begin
        if (rst) q <= 0;
        else     q <= d;
        qn <= ~q;
    end
endmodule

//---------------------
// SR Flip-Flop (with async reset)
module sr_ff (
    input  logic clk,
    input  logic rst,
    input  logic s, r,
    output logic q,
    output logic qn
);
    always_ff @(posedge clk or posedge rst) begin
        if (rst)       q <= 0;
        else case ({s, r})
            2'b00:     ;     // Retain state
            2'b01:     q <= 0;
            2'b10:     q <= 1;
            2'b11:     q <= 1'bx; // Invalid state
        endcase
        qn <= ~q;
    end
endmodule

//---------------------
// JK Flip-Flop (with async reset)
module jk_ff (
    input  logic clk,
    input  logic rst,
    input  logic j, k,
    output logic q,
    output logic qn
);
    always_ff @(posedge clk or posedge rst) begin
        if (rst)        q <= 0;
        else case ({j, k})
            2'b00:      ;        // Retain state
            2'b01:      q <= 0;
            2'b10:      q <= 1;
            2'b11:      q <= ~q;
        endcase
        qn <= ~q;
    end
endmodule

//---------------------
// T Flip-Flop (with async reset)
module t_ff (
    input  logic clk,
    input  logic rst,
    input  logic t,
    output logic q,
    output logic qn
);
    always_ff @(posedge clk or posedge rst) begin
        if (rst)     q <= 0;
        else if (t)  q <= ~q;
        // else: retain state
        qn <= ~q;
    end
endmodule

