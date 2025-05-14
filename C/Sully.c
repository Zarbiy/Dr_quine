#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>

int main(){
    int x = 5;
    char *file = __FILE__;
    if (file[6] >= '0' && file[6] <= '5') {
        x = file[6] - '0';
    }
    if (x <= 0)
        return 0;
    x = x - 1;
    char name_file[15];
    sprintf(name_file, "Sully_%d.c", x);
    int fd = open(name_file, O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (fd < 0)
        return 0;
    char *str = "#include <stdio.h>%1$c#include <fcntl.h>%1$c#include <stdlib.h>%1$c#include <unistd.h>%1$c%1$cint main(){%1$c    int x = %2$d;%1$c    char *file = __FILE__;%1$c    if (file[6] >= '0' && file[6] <= '5') {%1$c        x = file[6] - '0';%1$c    }%1$c    if (x <= 0)%1$c        return 0;%1$c    x = x - 1;%1$c    char name_file[15];%1$c    sprintf(name_file, %3$cSully_%%d.c%3$c, x);%1$c    int fd = open(name_file, O_WRONLY | O_CREAT | O_TRUNC, 0644);%1$c    if (fd < 0)%1$c        return 0;%1$c    char *str = %3$c%4$s%3$c;%1$c    dprintf(fd, str, 10, x, 34, str);%1$c    close(fd);%1$c    char exec[100];%1$c    sprintf(exec, %3$cclang -Wall -Wextra -Werror -o Sully_%%d Sully_%%d.c && ./Sully_%%d%3$c, x, x, x);%1$c    system(exec);%1$c    return 0;%1$c}%1$c";
    dprintf(fd, str, 10, x, 34, str);
    close(fd);
    char exec[100];
    sprintf(exec, "clang -Wall -Wextra -Werror -o Sully_%d Sully_%d.c && ./Sully_%d", x, x, x);
    system(exec);
    return 0;
}
