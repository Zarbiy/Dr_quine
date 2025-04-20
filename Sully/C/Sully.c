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
    int current = x - 1;
    char name_file[30];
    sprintf(name_file, "Sully_%d.c", current);
    int fd = open(name_file, O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (fd < 0)
        return 0;
    char *str = "#include <stdio.h>%c#include <fcntl.h>%c#include <stdlib.h>%c#include <unistd.h>%c%cint main(){%c    int x = %d;%c    char *file = __FILE__;%c    if (file[6] >= '0' && file[6] <= '5') {%c        x = file[6] - '0';%c    }%c    if (x <= 0)%c        return 0;%c    int current = x - 1;%c    char name_file[30];%c    sprintf(name_file, %cSully_%%d.c%c, current);%c    int fd = open(name_file, O_WRONLY | O_CREAT | O_TRUNC, 0644);%c    if (fd < 0)%c        return 0;%c    char *str = %c%s%c;%c    dprintf(fd, str ,10,10,10,10,10,10,current,10,10,10,10,10,10,10,10,10,34,34,10,10,10,10,34,str,34,10,10,10,10,34,34,10,10,10,10);%c    close(fd);%c    char exec[100];%c    sprintf(exec, %cclang -Wall -Wextra -Werror -o Sully_%%d Sully_%%d.c && ./Sully_%%d%c, current, current, current);%c    system(exec);%c    return 0;%c}%c";
    dprintf(fd, str ,10,10,10,10,10,10,current,10,10,10,10,10,10,10,10,10,34,34,10,10,10,10,34,str,34,10,10,10,10,34,34,10,10,10,10);
    close(fd);
    char exec[100];
    sprintf(exec, "clang -Wall -Wextra -Werror -o Sully_%d Sully_%d.c && ./Sully_%d", current, current, current);
    system(exec);
    return 0;
}
