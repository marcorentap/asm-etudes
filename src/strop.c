#include <stdio.h>

void func1(char *str) {
    *(str + 9) = '\0';
    *(str + 6) = 2;
}

int main() {
    char str[] = "Harry Potter";
    func1(str);
    printf("%s", str);
}
