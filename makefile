all: sproj5.x proj5.x
	make sproj5.x proj5.x

sproj5.x: sproj5.o passserver.o
	g++6 -o sproj5.x sproj5.o passserver.o -lcrypt
proj5.x: proj5.o passserver.o
	g++6 -o proj5.x proj5.o passserver.o -lcrypt
proj5.o: proj5.cpp passserver.o passserver.h hashtable.h
	g++6 -c proj5.cpp
sproj5.o: sproj5.cpp passserver.o passserver.h hashtable.h
	g++6 -c sproj5.cpp
passserver.o: passserver.cpp passserver.h hashtable.h hashtable.hpp
	g++6 -c passserver.cpp

clean:
	rm *.o proj5.x sproj5.x
