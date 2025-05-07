#include <stdio.h>

void ft_print(char *str) {
    printf(str, 10, 34, str);
}

int main() {
    /* This is a comment inside main function */
    char *str = "#include <stdio.h>%1$c%1$cvoid ft_print(char *str) {%1$c    printf(str, 10, 34, str);%1$c}%1$c%1$cint main() {%1$c    /* This is a comment inside main function */%1$c    char *str = %2$c%3$s%2$c;%1$c    ft_print(str);%1$c    return 0;%1$c}%1$c%1$c/* This is a comment outsite main function */";
    ft_print(str);
    return 0;
}

/* This is a comment outsite main function */