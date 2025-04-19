CC = cc

CFLAGS = -Wall -Wextra -Werror

NAME = Colleen

SRC = Colleen.c

all: $(NAME)

$(NAME): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(NAME)

clean:
	@rm -f $(NAME)

fclean: clean

re: fclean all

.PHONY: all clean fclean re
