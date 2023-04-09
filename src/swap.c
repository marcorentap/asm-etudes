void func1(int *x, int *y) {
    int temp = *x;
    *y = *x;
    *x = temp;
}

int main() {
    int x = 3;
    int y = 4;
    func1(&x, &y);
    return 0;
}
