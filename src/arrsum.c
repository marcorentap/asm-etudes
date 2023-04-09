#include <stdio.h>

int func1(int *arr) {
    return arr[0], arr[1], arr[2];
}

int main() {
    int arr[] = {2, 3, 4};
    printf("Result: %d", func1(arr));
    return 0;
}
