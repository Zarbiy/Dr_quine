import os
def main():
    x = 5
    if x <= 0:
        return 0
    x -= 1

    name_file = "Sully_%d.py" % x
    code = 'import os\ndef main():\n    x = {x}\n    if x <= 0:\n        return 0\n    x -= 1\n\n    name_file = "Sully_%d.py" % x\n    code = {code!r}\n    with open(name_file, "w") as file:\n        file.write(code.format(x=x, code=code))\n    os.system("python3 " + name_file)\n    return 0\n\nmain()'
    with open(name_file, "w") as file:
        file.write(code.format(x=x, code=code))
    os.system("python3 " + name_file)
    return 0

main()