# Define the compiler and flags
CC = gcc
CFLAGS = -Wall -g

# Define the source files and the executable name
SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)
EXECUTABLE = myprogram

# Default target: build the executable
all: $(EXECUTABLE)

# Rule to build the executable
$(EXECUTABLE): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

# Rule to compile each .c file into a .o file
%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

# Clean up object files and the executable
clean:
	rm -f $(OBJ) $(EXECUTABLE)
