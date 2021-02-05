all: run clean


BUILD = build


SRC = main.c\
src/functions.c\


$(BUILD):
	mkdir build

INC = -Iinc

PROJECT_NAME = hello.out


$(PROJECT_NAME): $(SRC)
	gcc $(SRC) $(INC) -o $(PROJECT_NAME)


run: $(PROJECT_NAME)
	$(PROJECT_NAME)

clean: 
	rm -rf $(PROJECT_NAME) documentation/html