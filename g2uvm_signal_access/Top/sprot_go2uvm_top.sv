// Copyright (c) 2004-2017 VerifWorks, Bangalore, India
// http://www.verifworks.com 
// Contact: support@verifworks.com 
// 
// This program is part of Go2UVM at www.go2uvm.org
// Some portions of Go2UVM are free software.
// You can redistribute it and/or modify  
// it under the terms of the GNU Lesser General Public License as   
// published by the Free Software Foundation, version 3.
//
// VerifWorks reserves the right to obfuscate part or full of the code
// at any point in time. 
// We also support a comemrical licensing option for an enhanced version
// of Go2UVM, please contact us via support@verifworks.com
//
// This program is distributed in the hope that it will be useful, but 
// WITHOUT ANY WARRANTY; without even the implied warranty of 
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
// Lesser General Lesser Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this program. If not, see <http://www.gnu.org/licenses/>.

/********************************************
* VerifWorks Go2UVM App: VW_DVC_Go2UVM
* Automatically generated by VerifWorks's DVC_Go2UVM Riviera Apps 
* Thanks for using VerifWorks products
* Visit http://www.verifworks.com for more 
* Generated on   : 2016-06-21 21:50:32
********************************************/ 


// Generating Go2UVM top module for DUT: sprot
// ---------------------------------------------------------

`include "uvm_pkg.sv"
`include "G2U_sig_access_test.sv"
`include "sprot_if.sv"
import uvm_pkg::*;
//`include "G2U_sig_access_test.sv"
module sprot_go2uvm;
  parameter VW_CLK_PERIOD = 10;

  // Simple clock generator
  bit clk ;
  always # (VW_CLK_PERIOD/2) clk <= ~clk;

  // Interface instancez
  sprot_if sprot_if_0 (clk);

  // Connect TB clk to Interface instance clk

  // DUT instance
  sprot sprot_0 (
    .clk(sprot_if_0.clk),
    .a(sprot_if_0.a),
    .b(sprot_if_0.b),
    .rst_n(sprot_if_0.rst_n),
    .start(sprot_if_0.start),
    .prot_err(sprot_if_0.prot_err),
    .xfer_end(sprot_if_0.xfer_end)
  );


  // Using VW_Go2UVM
//  sprot_test sprot_test_0;
  initial begin : go2uvm_test
  //  sprot_test_0 = new ();
    // Connect virtual interface to physical interface
   // `G2U_SET_VIF(sprot_if,sprot_if_0)
    uvm_config_db #(virtual sprot_if)::set(null,"*","vif",sprot_if_0);
    // Kick start standard UVM phasing
   // $dumpfile("dump.vcd");
   //  $dumpvars;
    run_test ("G2U_sig_access_test");
  end : go2uvm_test
endmodule : sprot_go2uvm
