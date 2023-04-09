int func3(int x, int y) {
    return x | y;
}

int func2(int x, int y) {
    return x & y;
}

int func1(int x, int y) {
    int comp = x & 1;
    if (comp) {
        return func2(x, y);
    } else {
        return func3(x, y);
    }
}

int main() {
    int x = 7;
    int y = 4;
    int z = func1(x, y);
}
