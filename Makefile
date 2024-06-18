# Directorios de origen y destino
SRC_DIR := src
BIN_DIR := bin

# Librerías y flags para SFML
SFML := -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio

# Obtener todos los archivos .cpp en el directorio de origen
CPP_FILES := $(wildcard $(SRC_DIR)/*.cpp)

# Generar los nombres de los archivos .o en el directorio de destino
OBJ_FILES := $(patsubst $(SRC_DIR)/%.cpp,$(BIN_DIR)/%.o,$(CPP_FILES))

# Nombre del archivo ejecutable
TARGET := $(BIN_DIR)/tetris

# Flags del compilador
CXXFLAGS := -std=c++17 -Wall -Iinclude

# Regla principal
all: $(TARGET)

# Regla para compilar el ejecutable
$(TARGET): $(OBJ_FILES)
	$(CXX) $(OBJ_FILES) -o $(TARGET) $(SFML)

# Regla para compilar los archivos fuente
$(BIN_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Regla para limpiar los archivos generados
clean:
	rm -f $(OBJ_FILES) $(TARGET)

# Regla para ejecutar el programa
run: $(TARGET)
	./$(TARGET)

.PHONY: all clean run
