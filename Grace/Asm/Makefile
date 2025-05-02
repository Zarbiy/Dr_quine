NASM        = nasm

NASM_FLAGS  = -f elf64

LD          = gcc

NAME        = Grace

SRC         = Grace.s

OBJ         = Grace.o

all: $(NAME)

$(NAME): $(OBJ)
	$(LD) -o $(NAME) $(OBJ) -nostartfiles

$(OBJ): $(SRC)
	$(NASM) $(NASM_FLAGS) $(SRC) -o $(OBJ)

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
