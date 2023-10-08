struct Foo {
  int x;
};

int main(void) {
  struct Foo f1;
  struct Foo f2;

  struct Foo *arr[2];
  arr[0] = &f1;
  arr[1] = &f2;

  arr[0]->x = 99;
  arr[1]->x = 101;

  return 0;
}
