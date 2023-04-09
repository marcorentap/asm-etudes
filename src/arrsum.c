int func1(int *arr) {
    return arr[0] + arr[1] + arr[2];
}

int main() {
    int arr[] = {2, 3, 4};
    int sum = func1(arr);
    return 0;
}
