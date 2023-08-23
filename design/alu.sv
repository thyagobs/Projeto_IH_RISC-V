`timescale 1ns / 1ps

module alu#(
        parameter DATA_WIDTH = 32,
        parameter OPCODE_LENGTH = 4
        )
        (
        input logic [DATA_WIDTH-1:0]    SrcA,
        input logic [DATA_WIDTH-1:0]    SrcB,

        input logic [OPCODE_LENGTH-1:0]    Operation,
        output logic[DATA_WIDTH-1:0] ALUResult
        );
        
        



        // always_comb
        // begin
        //     case(Operation)
        //     4'b0000:        // AND
        //             $display ("%d", Operation);
	//     4'b0001:        // OR
	// 	    $display ("%d", Operation);
        //     4'b0010:	    // LUI
	//             $display ("%d", Operation);
	//     4'b0011:	    // XOR
	//             $display ("%d", Operation);
        //     4'b0100:	    // SLLI
	// 	    $display ("%d", Operation);
        //     4'b0101:        // SRLI
        //             $display ("%d", Operation);
	//     4'b0110:        // BLT 
        //             $display ("%d", Operation);
	//     4'b0111:        // BGE 
	// 	    $display ("%d", Operation);        
        //     4'b1000:        // BEQ
        //             $display ("%d", Operation);
        //     4'b1001:        // BNE   
        //             $display ("%d", Operation);
        //     4'b1010:        // SUB    
        //             $display ("%d", Operation);
        //     4'b1011:        // ADD    
        //             $display ("%d", Operation);
        //     4'b1100:        // SLT e SLTI
	// 	    $display ("%d", Operation);
        //     4'b1101:        // SRAI
        //             $display ("%d", Operation); 
        //     default:
        //             $display ("deu merda");
        //     endcase
        // end


        always_comb
        begin
            case(Operation)
            4'b0000:        // AND
                    ALUResult = SrcA & SrcB;
	    4'b0001:        // OR
		    ALUResult = SrcA | SrcB;
            4'b0010:	    // LUI
	            ALUResult = SrcB;	
	    4'b0011:	    // XOR
	            ALUResult = SrcA ^ SrcB;
            4'b0100:	    // SLLI
		    ALUResult = SrcA << SrcB; 
            4'b0101:        // SRLI
                    ALUResult = SrcA >> SrcB;
	    4'b0110:        // BLT 
                    ALUResult = (SrcA < SrcB) ? 1 : 0;
	    4'b0111:        // BGE 
		    ALUResult = (SrcA >= SrcB) ? 1 : 0;        
            4'b1000:        // BEQ
                    ALUResult = (SrcA == SrcB) ? 1 : 0;
            4'b1001:        // BNE   
                    ALUResult = (SrcA != SrcB) ? 1 : 0;  
            4'b1010:        // SUB    
                    ALUResult = SrcA - SrcB;  
            4'b1011:        // ADD    
                    ALUResult = SrcA + SrcB; 
            4'b1100:        // SLT e SLTI
		    ALUResult = ($signed(SrcA) < $signed(SrcB)) ? 1 : 0;
            4'b1101:        // SRAI
                    ALUResult = $signed(SrcA) >>> SrcB[4:0]; 
            4'b1110:        //JAL
                    ALUResult = 1;
            default:
                    ALUResult = 0;
            endcase
        end
endmodule
