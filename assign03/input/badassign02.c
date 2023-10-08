int main(void) {
  // assignment to an array isn't allowed
  int arr1[4];
  int arr2[4];

  int i;
  for (i = 0; i < 4; i = i + 1) {
    arr1[i] = i;
  }

  arr2 = arr1; // error: can't assign to an array

  return 0;
}
