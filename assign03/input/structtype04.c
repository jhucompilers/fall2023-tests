struct Item {
  int foo;
  char bar;
};

int main(void) {
  struct Item x, *y, z[10];

  y = &x;
  y->foo = 17;
  y->bar = '!';
  z[0].foo = 42;
  z[0].bar = '*';

  return 0;
}
