struct Foo {
  int x;
};

int main(void) {
  struct Foo s;
  s.x = 42;
  return 1 && s;
}
