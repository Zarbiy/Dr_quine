CC = cc

CFLAGS = -Wall -Wextra -Werror

NAME = Sully

SRC = Sully.c

GENERATED_FILES = $(wildcard Sully_*)

all: $(NAME)

$(NAME): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(NAME)

clean:
	@rm -f $(NAME) $(GENERATED_FILES)

fclean: clean

re: fclean all

.PHONY: all clean fclean re
