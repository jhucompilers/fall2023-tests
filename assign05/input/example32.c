void print_i32(int n);
void print_nl(void);

void swap(int arr[0], int i, int j) {
  int tmp;

  tmp = arr[i];
  arr[i] = arr[j];
  arr[j] = tmp;
}

void bubble(int arr[0], int n) {
  int i, tmp;

  for (i = 1; i < n; i = i + 1) {
    if (arr[i] < arr[i-1]) {
      swap(arr, i-1, i);
    }
  }
}

int main(void) {
  int a[5];

  a[0] = 52;
  a[1] = 31;
  a[2] = 8;
  a[3] = 41;
  a[4] = 75;

  bubble(a, 5);

  int i;
  for (i = 0; i < 5; i = i + 1) {
    print_i32(a[i]);
    print_nl();
  }

  return 0;
}
