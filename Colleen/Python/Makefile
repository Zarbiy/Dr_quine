NAME = Sully

SRC = Colleen.py

all: $(NAME)

$(NAME):
	python $(SRC) > file.txt

clean:
	@rm -f file.txt

fclean: clean

re: fclean all

.PHONY: all clean fclean re
