int main(void) {
  int arr[10];

  int *p;

  p = &arr[0];

  int i;
  for (i = 0; i < 10; i = i + 1) {
    p[i] = i; // subscripting using a pointer should be allowed
  }

  return 0;
}
