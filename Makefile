

# 
EXE        = compilation_test
OBJS 	   = a.o b.o

# NVCC compiler options:
NVCC       = nvcc
NVCC_FLAGS =
NVCC_LIBS  =


# ---- 
# %.o %.c
#

# build executable 
$(EXE) : $(OBJS)
	$(NVCC) $(NVCC_FLAGS) -c -o $@ $< $(NVCC_LIBS)
	
# build objects
%.o: %.c 
	$(NVCC) $(NVCC_FLAGS) -c -o $@ $<  
