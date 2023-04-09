int func1(int n) {
    int i;
    int sum = 0;
    for (i = 1; i <= n; i++) {
        sum += i;
    }
    return sum;
}

int main() {
    int x = 5;
    int y = func1(x);
    return 0;
}
