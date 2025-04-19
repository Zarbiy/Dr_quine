#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>

#define TXT "#include <fcntl.h>%c#include <stdio.h>%c#include <unistd.h>%c%c#define TXT %c%s%c%c#define PRINT(fd) dprintf(fd, TXT, 10, 10, 10, 10, 34, TXT, 34, 10, 10, 34, 34, 10, 10, 10)%c#define MAIN int main(){int f = open(%cGrace_kid.c%c, O_CREAT | O_WRONLY | O_TRUNC, 777); PRINT(f); close(f); return 0;}%c/* this is a comment */%c%cMAIN"
#define PRINT(fd) dprintf(fd, TXT, 10, 10, 10, 10, 34, TXT, 34, 10, 10, 34, 34, 10, 10, 10)
#define MAIN int main(){int f = open("Grace_kid.c", O_CREAT | O_WRONLY | O_TRUNC, 777); PRINT(f); close(f); return 0;}
/* this is a comment */

MAIN