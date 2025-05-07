#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>

#define TXT "#include <fcntl.h>%1$c#include <stdio.h>%1$c#include <unistd.h>%1$c%1$c#define TXT %2$c%3$s%2$c%1$c#define PRINT(fd) dprintf(fd, TXT, 10, 34, TXT)%1$c#define MAIN int main(){int f = open(%2$cGrace_kid.c%2$c, O_CREAT | O_WRONLY | O_TRUNC, 777); PRINT(f); close(f); return 0;}%1$c/* this is a comment */%1$c%1$cMAIN"
#define PRINT(fd) dprintf(fd, TXT, 10, 34, TXT)
#define MAIN int main(){int f = open("Grace_kid.c", O_CREAT | O_WRONLY | O_TRUNC, 777); PRINT(f); close(f); return 0;}
/* this is a comment */

MAIN