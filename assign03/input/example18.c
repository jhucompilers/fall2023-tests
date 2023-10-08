struct Foo {
  int x;
  char y;
};

int readint(void);

int main(void) {
  int result;
  result = 0;
  int f;
  f = readint();
  if (f > 0) {
    struct Foo f;
    f.x = readint();
    f.y = '$';
    while (f.x > 0) {
      if ((f.x / 2) * 2 == f.x) {
        const char *f;
        f = "hello";
        result = f[0];
      } else {
        unsigned long f;
        f = 160000111;
        result = f / 455;
      }
      f.x = f.x - 1;
    }
    f.x = readint();
  }
  return result;
}
