struct Foo {
  int x;
};

int main(void) {
  int a;
  a = 2;
  struct Foo s;
  s.x = 3;
  return a == s;
}
