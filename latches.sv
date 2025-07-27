//---------------------
// SR Latch
module sr_latch (
    input  logic S,
    input  logic R,
    output logic Q,
    output logic Qn
);
    always_comb begin
        case ({S, R})
            2'b00: ;           // No change
            2'b01: Q = 0;
            2'b10: Q = 1;
            2'b11: Q = 1'bx;   // Invalid state
        endcase
        Qn = ~Q;
    end
endmodule

//---------------------
// Gated SR Latch
module gated_sr_latch (
    input  logic S,
    input  logic R,
    input  logic En,
    output logic Q
);
    always_comb begin
        if (En) begin
            if (S && !R) Q = 1;
            else if (!S && R) Q = 0;
            // S=R=0: retain state, S=R=1: invalid
        end
        // else: retain state
    end
endmodule

//---------------------
// D Latch
module d_latch (
    input  logic D,
    input  logic En,
    output logic Q
);
    always_comb begin
        if (En)
            Q = D;
        // else: retain state (transparent latch)
    end
endmodule

//---------------------
// JK Latch
module jk_latch (
    input  logic J, K, En,
    output logic Q
);
    always_comb begin
        if (En) begin
            case ({J, K})
                2'b00: ;          // retain state
                2'b01: Q = 0;
                2'b10: Q = 1;
                2'b11: Q = ~Q;
            endcase
        end
    end
endmodule

//---------------------
// T Latch
module t_latch (
    input  logic T,
    input  logic En,
    output logic Q
);
    always_comb begin
        if (En) begin
            if (T)
                Q = ~Q;
            // else: retain state
        end
    end
endmodule

