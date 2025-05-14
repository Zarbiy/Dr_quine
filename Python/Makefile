NAME_COLLEEN = Colleen
NAME_GRACE   = Grace
NAME_SULLY   = Sully

SRC_COLLEEN = Colleen.py
SRC_GRACE   = Grace.py
SRC_SULLY   = Sully.py

GENERATED_FILES = Sully_*
GENERATED_FILES_KID = Grace_kid.py

all:
	@echo "make colleen | grace | sully"

colleen:
	@python $(SRC_COLLEEN)

grace:
	@python $(SRC_GRACE)

sully:
	@python $(SRC_SULLY)

clean:
	@rm -f $(GENERATED_FILES) $(GENERATED_FILES_KID)

fclean: clean

re: fclean all

.PHONY: all colleen grace sully clean fclean re
