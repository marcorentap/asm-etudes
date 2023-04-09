#include <stdio.h>

void func2(char *c) {
    if (*c >= 'a' && *c <= 'z') {
        *c -= 0x20;
    }
}

void func1(char *str) {
    char *c = str;
    while (*c != '\0') {
        func2(c++);
    }
}

int main() {
    char str[] = "Harry Potter";
    func1(str);
    printf("%s", str);
    return 0;
}
