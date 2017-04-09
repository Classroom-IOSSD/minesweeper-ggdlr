CC = gcc
CFLAGS = -Wall
OBJS = conio.o minesweeper.o
HEADER = conio.h
TARGET = minesweeper

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $<

$(OBJS): $(HEADER)

.PHONY: clean

clean:
	$(RM) $(OBJS) $(TARGET)
