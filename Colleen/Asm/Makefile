NASM        = nasm

NASM_FLAGS  = -f elf64

LD          = gcc

NAME        = Colleen

SRC         = Colleen.s

OBJ         = Colleen.o

all: $(NAME)

$(NAME): $(OBJ)
	$(LD) -o $(NAME) $(OBJ)

$(OBJ): $(SRC)
	$(NASM) $(NASM_FLAGS) $(SRC) -o $(OBJ)

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
