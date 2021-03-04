# verilog-processor

See Diagram.jpg for a mid-level visual concept of the computer processor architecture.

ALU (Arithmetic Logic Unit):
The ALU consists of arithmetic submodules such as an adder, subtractor, and multiplier; logic submodules perform bitwise functions like and, or, and xor; as well as register shifting and rotation submodules. The ALU also contains a built-in multiplexer.

Results of the ALU are stored in registers, which can then be accessed by the instruction decoder and used again as inputs to the ALU.

Instruction decoder:
The instruction decoder receives instructions stored in ROM and decodes them to instruct the ALU which operations to perform, and selects which registers will act as input to the ALU.

FSM (Finite State Machine):
The FSM essentially acts as the heartbeat of the processor, instructing various components to fetch/decode/execute instructions, then repeat.

Processor:
If the FSM module is the heartbeat, the processor module acts as the brain by instantiating and initializing most other major modules.
The processor itself is instantiated by the testbench_processor.v file. 

This is the final working version as presented and should run in it's current state.

This project was developed using Intel's ModelSim FPGA simulation software.
