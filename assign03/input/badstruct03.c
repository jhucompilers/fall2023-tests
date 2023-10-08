struct Foo {
  int x;
};

// error: can't define another struct type with the same name
struct Foo {
  char y;
};
