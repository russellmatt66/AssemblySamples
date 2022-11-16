# 1. All the instructions in MIPS are 32 bits
# 2. A byte in the MIPS architecture represents 8 bits
# 2b. A halfword represents 2 bytes (16 bits)
# 2c. A word represents 4 bytes (32 bits)
# 3. Each character used in the MIPS architecture requires 1 byte of storage. 
# 3b. Each integer used requires 4 bytes of storage.

# Literals:
# All numbers, e.g., 5, characters enclosed in single quotes, e.g., 'g', and strings enclosed in 
# double quotes, e.g., "Deadpool".

# Registers
# 32 general-purpose registers.
# Each register in this architecture is preceded by '$' in the assembly instruction.
# To address these registers you can either use the number of the register or the name.
# Ex.
# Number: $0 to $31
# Name $t1, t2

# GENERAL STRUCTURE
# Two parts: (1) Data declaration section (2) Code section

.data # data declaration section start
	var1:	.word	5

.text # code section start
	
	la $t0, var1 # load address of var1 into register t0 (load addressing)
	lw $t2, ($t0) # copy integer value from t0 into t2 (indirect addressing)
	lw $tw, 4($t0) # offsetting of RAM address to obtain a contiguous value (indexed addressing) 
	