struct Foo {
  int x;
};

int main(void) {
  struct Foo s;
  s.x = 42;
  return s || 1;
}
