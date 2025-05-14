import os
def main():
    x = 5
    if x <= 0:
        return 0
    x -= 1

    name_file = "Sully_%d.py" % x
    file = open(name_file, "w")
    code = 'import os\ndef main():\n    x = {x}\n    if x <= 0:\n        return 0\n    x -= 1\n\n    name_file = "Sully_%d.py" % x\n    file = open(name_file, "w")\n    code = {code!r}\n    file.write(code.format(x=x, code=code))\n    file.close()\n\n    os.system("python3 " + name_file)\n    return 0\n\nmain()'
    file.write(code.format(x=x, code=code))
    file.close()

    os.system("python3 " + name_file)
    return 0

main()