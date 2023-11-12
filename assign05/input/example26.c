void print_str(const char *s);
void print_nl(void);
void print_i32(int n);

struct Person {
  char name[20];
  int age;
};

int main(void) {
  struct Person p;
  p.name[0] = 'A';
  p.name[1] = 'l';
  p.name[2] = 'i';
  p.name[3] = 'c';
  p.name[4] = 'e';
  p.name[5] = 0;

  p.age = 43;

  const char *s;
  s = p.name;

  print_str(s);
  print_nl();

  print_i32(p.age);
  print_nl();

  return 0;
}
