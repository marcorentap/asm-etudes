int func1(int n) {
    int i;
    int sum = 0;
    for (i = 0; i < n; i++) {
        sum += n;
    }
    return sum;
}

int main() {
    int x = 5;
    int y = func1(x);
    return 0;
}
