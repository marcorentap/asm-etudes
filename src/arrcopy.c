void func1(int *dest, int *src) {
    int i = 0;
    for (i = 0; i < 3; i++) {
        dest[i] = src[i];
    }
}

int main() {
    int arr[] = {2, 3, 4};
    int arr2[3];

    func1(arr, arr2);
    return 0;
}
