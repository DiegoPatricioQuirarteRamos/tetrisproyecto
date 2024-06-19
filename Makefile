# Directorios de origen y destino
SRC_DIR := src
BIN_DIR := bin

# Archivos SFML y librerías
SFML := -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio

# Obtener todos los archivos .cpp en el directorio de origen
CPP_FILES := $(wildcard $(SRC_DIR)/*.cpp)

# Generar los nombres de los archivos .o correspondientes
OBJ_FILES := $(patsubst $(SRC_DIR)/%.cpp,$(BIN_DIR)/%.o,$(CPP_FILES))

# Asegurar que el directorio de destino exista
$(BIN_DIR):
	mkdir -p $(BIN_DIR)

# Regla para compilar los archivos .cpp en archivos .o
$(BIN_DIR)/%.o: $(SRC_DIR)/%.cpp $(wildcard include/*.hpp) | $(BIN_DIR)
	g++ -c $< -o $@ $(SFML) -Iinclude

# Regla para enlazar los archivos .o en el archivo ejecutable
$(BIN_DIR)/main.exe: $(OBJ_FILES)
	g++ $^ -o $@ $(SFML) -Iinclude

# Regla por defecto para compilar todos los archivos .cpp
all: $(BIN_DIR)/main.exe

# Regla para ejecutar el archivo .exe
run-main: $(BIN_DIR)/main.exe
	./$<

# Regla para limpiar los archivos generados
clean:
	rm -f $(BIN_DIR)/*.o $(BIN_DIR)/*.exe

.PHONY: all clean run-main
