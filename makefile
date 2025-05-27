CC = g++
OUT = ./bin/launcher
CFLAGS = -std=c++20 -O0 -Wall -o $(OUT)
LFLAGS = -lsfml-graphics -lsfml-system -lsfml-window -framework OpenGL -lportaudio
INCLUDE = -I/opt/homebrew/Cellar/sfml/2.6.1/include
LIB = -L/opt/homebrew/Cellar/sfml/2.6.1/lib
SRC = ./include/imgui_draw.cpp ./include/imgui_tables.cpp ./include/imgui_widgets.cpp ./include/imgui-SFML.cpp ./include/imgui.cpp

all:
	$(CC) main.cpp $(SRC) $(INCLUDE) $(CFLAGS) $(LIB) $(LFLAGS)
clean:
	rm -rf $(OUT)
