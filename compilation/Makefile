

# 
EXE        = compilation_test
OBJS 	   = a.o b.o

# NVCC compiler options:
NVCC       = nvcc
NVCC_FLAGS = --gpu-architecture=compute_60

# relocatable device code
NVCC_LIBS  = -rdc=true


# helpful info 
	# %.o %.c
	# $@, $^   left and right side of :
	# $< 	   first item in the dependency lists      


# build executable
$(EXE) : $(OBJS)
	$(NVCC) $(NVCC_FLAGS) -c -o $@ $< $(NVCC_LIBS)
	
# build objects (e.g. nvcc -c -o a.o a.cu)
%.o: %.cu 
	$(NVCC) $(NVCC_FLAGS) -c -o $@ $<  
