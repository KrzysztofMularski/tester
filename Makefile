CC = clang++
CFLAGS = -g -Wall

TARGET = tester

.PHONY: $(TARGET)
all: $(TARGET)

$(TARGET): $(TARGET).cpp
	$(CC) $(CFLAGS) $(TARGET).cpp -o $(TARGET)

clean:
	$(RM) $(TARGET)

