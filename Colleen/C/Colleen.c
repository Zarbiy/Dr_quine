#include <stdio.h>

void ft_print(char *str) {
    printf(str, 10, 10, 10, 10, 10, 10, 10, 10, 34, str, 34, 10, 10, 10, 10, 10);
}

int main() {
    // This is a comment inside main function
    char *str = "#include <stdio.h>%c%cvoid ft_print(char *str) {%c    printf(str, 10, 10, 10, 10, 10, 10, 10, 10, 34, str, 34, 10, 10, 10, 10, 10);%c}%c%cint main() {%c    // This is a comment inside main function%c    char *str = %c%s%c;%c    ft_print(str);%c    return 0;%c}%c%c// This is a comment outsite main function";
    ft_print(str);
    return 0;
}

// This is a comment outsite main function