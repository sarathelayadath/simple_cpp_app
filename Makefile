CC = gcc
CFLAGS = -Wall
LDFLAGS = -static-libgcc -ldl

TARGET = file_exists
SOURCES = file_exists.c
OBJECTS = $(SOURCES:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJECTS)
        $(CC) $(CFLAGS) $(OBJECTS) -o $(TARGET) $(LDFLAGS)

%.o: %.c
        $(CC) $(CFLAGS) -c $< -o $@

clean:
        rm -f $(TARGET) $(OBJECTS)
