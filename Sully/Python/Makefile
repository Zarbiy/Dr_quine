NAME = Sully

SRC = Sully.py

GENERATED_FILES = $(wildcard Sully_*)

all: $(NAME)

$(NAME):
	python $(SRC)

clean:
	@rm -f $(GENERATED_FILES)

fclean: clean

re: fclean all

.PHONY: all clean fclean re
