#Target_name : Dependencies
#<TAB>Command
SRC = test.c\
src/sum.c\
src/sqr.c

OBJ = test.o\
sum.o\
sqr.o

INC = inc
CFLAGS= -I$(INC)
all.out : $(OBJ)
	gcc $^ -I$(INC) -o $@

#cc = gcc
#cxx = cpp

%.o:src/%.c
	$(CC) $^ -I$(INC) -c

run: target
	./all.out	

clean:
	rm all.out	*.o src/*.o