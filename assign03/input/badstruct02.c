struct Foo {
  int x;
};

int main(void) {
  struct Foo s1;
  s1.x = 12;
  struct Bar s2; // unknown struct type

  return 0;
}
