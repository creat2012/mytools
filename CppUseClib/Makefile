TARGET = main
SRS = main.cpp
CC = g++
LIB = -lReplaceSpace
FLAGS = -L ./Clib/ $(LIB) --save-temps
$(TARGET): $(SRS)
	$(CC) -g -o $(TARGET) $(SRS) $(FLAGS)

clean:
	rm main
