# Increase this value every time local.config is about to change.
LOCAL_CONFIG_VER=1

include local.config

CC=g++
#-------------------------------------------------------------
ROOT_DIR=.
SOURCE_DIR=src
INCLUDE_DIR=$(SOURCE_DIR)
RESOURCES_DIR=res
BIN_DIR=bin
OBJ_DIR=obj
#-------------------------------------------------------------
DEBUG=debug
RELEASE=release
BIN_TYPE=$(DEBUG)
#-------------------------------------------------------------
BIN_NAME=astar
SETTINGS_NAME="settings.xml"
#-------------------------------------------------------------
OBJECT_DIR := $(ROOT_DIR)/obj
BIN_DIR := $(ROOT_DIR)/bin

# Alphabetical order.
OBJECT_FILES := $(addprefix $(OBJECT_DIR)/,main.o app.o app_events.o assert.o console.o event_handler.o WindowSystem.o)

all: $(OBJECT_FILES)
	$(CC) -o $(BIN_DIR)/$(BIN_NAME) $(OBJECT_FILES) `sdl-config --cflags --libs`
	cp $(BIN_DIR)/$(BIN_NAME) $(ROOT_DIR)
#	cp $(RESOURCES_DIR)/settings.xml $(BIN_DIR)/$(RESOURCES_DIR)/

$(OBJECT_DIR)/%.o : $(SOURCE_DIR)/%.cpp
	$(CC) -c $< -I$(BOOST_DIR) `sdl-config --cflags --libs` -o $@

clean:
	# Left the setting file untouched.
	rm -f $(OBJECT_DIR)/*.o $(BIN_DIR)/$(BIN_NAME)




