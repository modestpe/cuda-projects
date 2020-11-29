

# updated : Nov 28, 2020

# NVCC compiler option


# nvlink, host linker 

vectorAdd.o: vectorAdd.cu
	nvcc --compile --cubin --ptx -arch=compute_60 vectorAdd.cu
	nvcc --fatbin 

	
#clean: 


# cubin does not match the target 
# linking together the new cubin.
