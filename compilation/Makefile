
# created on Nov 28, 2020

# tips on makefile
# -c option, enable to create obj file without linking (therefore, object file without main function) 
# -o option, create object file
# $@, $^   , left and right side of :  
# $< 	   , first item in the dependency lists
 
EXE        = compilation_test
OBJS 	   = a.o b.o

NVCC       = nvcc
NVCC_FLAGS = --gpu-architecture=compute_60 -rdc=true

# relocatable device code
NVCC_LIBS  =      

# build executable (from two object files?)
$(EXE) : $(OBJS)
	$(NVCC) $(NVCC_FLAGS) $(OBJS)

# build objects (e.g. nvcc -c -o a.o a.cu)
%.o: %.cu 
	$(NVCC) $(NVCC_FLAGS) -c -o $@ $<
	
%.ptx : %.cu
	$(NVCC) --ptx -c $<  
