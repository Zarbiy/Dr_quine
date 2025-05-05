NASM        = nasm

NASM_FLAGS  = -f elf64

LD          = gcc

NAME        = Sully

SRC         = Sully.s

OBJ         = Sully.o

GENERATED_FILES = $(wildcard Sully_*)

all: $(NAME)

$(NAME): $(OBJ)
	$(LD) -o $(NAME) $(OBJ) -nostartfiles

$(OBJ): $(SRC)
	$(NASM) $(NASM_FLAGS) $(SRC) -o $(OBJ)

clean:
	@rm -f $(OBJ) $(GENERATED_FILES)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re