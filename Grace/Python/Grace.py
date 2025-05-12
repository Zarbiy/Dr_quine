TXT = 'TXT = {!r}\nFONC = \'file = open("Grace_kid.py", "w")\\nfile.write(TXT.format(TXT))\\nfile.close()\'\nMAIN = exec\n# this is a comment\n\nMAIN(FONC)'
FONC = 'file = open("Grace_kid.py", "w")\nfile.write(TXT.format(TXT))\nfile.close()'
MAIN = exec
# this is a comment

MAIN(FONC)