all: pxattr 

PXATTROBJS = trpxattr.o pxattr.o 
pxattr:  $(PXATTROBJS)
	$(CXX) -o pxattr $(PXATTROBJS) -lstdc++
trpxattr.o : pxattr.cpp
	$(CXX) -c $(CXXFLAGS) -DTEST_PXATTR -o $@ pxattr.cpp
clean:
	rm -f \#* *~ *.o pxattr
