CC=g++

INCLUDE_DIR=source
SOURCE_DIR=source
DATA_DIR=base

BIN_NAME=astar

OBJECT_DIR := ../output/debug/obj
BIN_DIR := ../output/debug/bin

# Alphabetical order.
OBJECT_FILES := $(addprefix $(OBJECT_DIR)/,main.o Application.o ApplicationInit.o Assert.o Console.o)

all: $(OBJECT_FILES)
	$(CC) -o $(BIN_DIR)/$(BIN_NAME) $(OBJECT_FILES) `sdl-config --cflags --libs`
	cp $(DATA_DIR)/settings.xml $(BIN_DIR)/$(DATA_DIR)/

$(OBJECT_DIR)/%.o : $(SOURCE_DIR)/%.cpp
	$(CC) -c $< `sdl-config --cflags --libs` -o $@

clean:
	# Left the setting file untouched.
	rm -f $(OBJECT_DIR)/*.o $(BIN_DIR)/$(BIN_NAME)
