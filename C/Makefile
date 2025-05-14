CC      = cc
CFLAGS  = -Wall -Wextra -Werror

SRC_COLLEEN = Colleen.c
SRC_GRACE   = Grace.c
SRC_SULLY   = Sully.c

OBJ_COLLEEN = Colleen.o
OBJ_GRACE   = Grace.o
OBJ_SULLY   = Sully.o

NAME_COLLEEN = Colleen
NAME_GRACE   = Grace
NAME_SULLY   = Sully

GENERATED_FILES 	= Sully_*
GENERATED_FILES_KID = Grace_kid.c

all:
	@echo "make colleen | grace | sully"

colleen: $(NAME_COLLEEN)

grace: $(NAME_GRACE)

sully: $(NAME_SULLY)

$(NAME_COLLEEN): $(OBJ_COLLEEN)
	$(CC) $(CFLAGS) -o $@ $^

$(NAME_GRACE): $(OBJ_GRACE)
	$(CC) $(CFLAGS) -o $@ $^

$(NAME_SULLY): $(OBJ_SULLY)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	@rm -f *.o

fclean: clean
	@rm -f $(NAME_COLLEEN) $(NAME_GRACE) $(NAME_SULLY) $(GENERATED_FILES) $(GENERATED_FILES_KID)

re: fclean all

.PHONY: all colleen grace sully clean fclean re
