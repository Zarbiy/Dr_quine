CC = cc

CFLAGS = -Wall -Wextra -Werror

NAME = Grace

SRC = Grace.c

all: $(NAME)

$(NAME): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(NAME)

clean:
	@rm -f $(NAME) Grace_kid.c

fclean: clean

re: fclean all

.PHONY: all clean fclean re
