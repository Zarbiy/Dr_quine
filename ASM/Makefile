NASM        = nasm
NASM_FLAGS  = -f elf64
LD          = gcc

SRC_COLLEEN = Colleen.s
SRC_GRACE   = Grace.s
SRC_SULLY   = Sully.s

OBJ_COLLEEN = Colleen.o
OBJ_GRACE   = Grace.o
OBJ_SULLY   = Sully.o

NAME_COLLEEN = Colleen
NAME_GRACE   = Grace
NAME_SULLY   = Sully

GENERATED_FILES = Sully_*
GENERATED_FILES_KID = Grace_kid.s

all:
	@echo "make colleen | grace | sully"

colleen: $(NAME_COLLEEN)

grace: $(NAME_GRACE)

sully: $(NAME_SULLY)

$(NAME_COLLEEN): $(OBJ_COLLEEN)
	$(LD) -o $@ $^

$(NAME_GRACE): $(OBJ_GRACE)
	$(LD) -o $@ $^

$(NAME_SULLY): $(OBJ_SULLY)
	$(LD) -o $@ $^ 

%.o: %.s
	$(NASM) $(NASM_FLAGS) $< -o $@

clean:
	@rm -f *.o

fclean: clean
	@rm -f $(NAME_COLLEEN) $(NAME_GRACE) $(NAME_SULLY) $(GENERATED_FILES) $(GENERATED_FILES_KID)

re: fclean all

.PHONY: all colleen grace sully clean fclean re

