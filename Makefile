PROJECT_NAME = hello

# Output directory
BUILD = build

# All source code files
SRC = main.c\
src/Functions.c\

INC	= -Iinc

PROJECT_OUTPUT = $(BUILD)/$(PROJECT_NAME).out

$(PROJECT_NAME):all

# Run the target even if the matching name exists
.PHONY: run clean all

all: $(SRC) $(BUILD)
	gcc $(SRC) $(INC) -o $(PROJECT_OUTPUT).out

# Call `make run` to run the application
run: $(PROJECT_NAME)
	./$(PROJECT_OUTPUT).out

clean:
	rm -rf $(BUILD)

# Create new build folder if not present
$(BUILD):
	mkdir build