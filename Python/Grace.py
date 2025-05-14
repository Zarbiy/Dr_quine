TXT = 'TXT = {!r}\nFONC = \'with open("Grace_kid.py", "w") as file:\\n    file.write(TXT.format(TXT))\'\nMAIN = exec\n# this is a comment\n\nMAIN(FONC)'
FONC = 'with open("Grace_kid.py", "w") as file:\n    file.write(TXT.format(TXT))'
MAIN = exec
# this is a comment

MAIN(FONC)