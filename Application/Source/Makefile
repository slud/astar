# Increase this value every time local.config is about to change.
LOCAL_CONFIG_VER=1

include local.config

CC=g++
#-------------------------------------------------------------
ROOT_DIR         = .
LIBS_DIR         = libs
PUGIXML_LIB_DIR  = $(LIBS_DIR)/pugixml-1.0
SOURCE_DIR       = src
INCLUDE_DIR      = -I$(PUGIXML_LIB_DIR)
#INCLUDE_DIR     += -I$(SOURCE_DIR) # Was causing problems with cassert
INCLUDE_DIR     += -I$(SOURCE_DIR)/Framework
INCLUDE_DIR     += -I$(SOURCE_DIR)/Settings
INCLUDE_DIR     += -I$(SOURCE_DIR)/Settings/PugiXml
RESOURCES_DIR    = res
BIN_DIR          = bin
OBJ_DIR          = obj
#-------------------------------------------------------------
DEBUG    = debug
RELEASE  = release
BIN_TYPE = $(DEBUG)
#-------------------------------------------------------------
BIN_NAME      = astar
SETTINGS_NAME = "settings.xml"
#-------------------------------------------------------------
OBJECT_DIR = $(ROOT_DIR)/obj
BIN_DIR    = $(ROOT_DIR)/bin

# Alphabetical order.
PUGIXML_OBJECT_FILES = $(addprefix $(PUGIXML_LIB_DIR)/,pugixml.o)
OBJECT_FILES = $(addprefix $(OBJECT_DIR)/,main.o app.o app_events.o Assert.o console.o event_handler.o EventSystem.o Framework/Utils.o state_manager.o WindowSystem.o Settings/Settings.o Settings/SettingsVideo.o Settings/PugiXml/SettingsSystemPugi.o Settings/PugiXml/SettingsVideoPugi.o)

all: pugixml $(OBJECT_FILES)
    $(CC) -o $(BIN_DIR)/$(BIN_NAME) $(PUGIXML_OBJECT_FILES) $(OBJECT_FILES) `sdl-config --cflags --libs`
    cp $(BIN_DIR)/$(BIN_NAME) $(ROOT_DIR)
#   cp $(RESOURCES_DIR)/settings.xml $(BIN_DIR)/$(RESOURCES_DIR)/

pugixml:
    echo "pugixml"
#   $(CC) -c $(PUGIXML_LIB_DIR)/pugixml.cpp -o $(PUGIXML_LIB_DIR)/pugixml.o

$(OBJECT_DIR)/%.o : $(SOURCE_DIR)/%.cpp
    $(CC) -c $< -I$(BOOST_DIR) $(INCLUDE_DIR) `sdl-config --cflags --libs` -o $(OBJ_DIR)/`basename $@`

clean:
    # Left the settings file untouched.
    rm -f $(OBJECT_DIR)/*.o $(BIN_DIR)/$(BIN_NAME)




