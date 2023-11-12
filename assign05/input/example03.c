int main(void) {
  int i, n, sum;

  i = 1;
  n = 11;
  sum = 0;

  do {
    sum = sum + i;
    i = i + 1;
  } while (i < n);

  return sum;
}
