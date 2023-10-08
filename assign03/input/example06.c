int main(void) {
  int arr[10];
  int *p;

  p = arr; // this should be allowed

  *p = 42; // sets the first element to 42

  return 0;
}
