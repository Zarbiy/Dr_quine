def print_msg(msg):
    print(msg.format(msg))

def main():
    # This is a comment inside main function
    msg = 'def print_msg(msg):\n    print(msg.format(msg))\n\ndef main():\n    # This is a comment inside main function\n    msg = {!r}\n    print_msg(msg)\n\n# This is a comment outsite main function\n\nif __name__ == "__main__":\n    main()'
    print_msg(msg)

# This is a comment outsite main function

if __name__ == "__main__":
    main()
