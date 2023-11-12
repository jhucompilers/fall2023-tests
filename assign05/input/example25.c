void print_i32(int n);
void print_nl(void);

struct Point {
  int x, y;
};

int main(void) {
  struct Point points[3];
  int i, count;

  count = 11;

  for (i = 0; i < 3; i = i + 1) {
    points[i].x = count;
    count = count + 1;
    points[i].y = count;
    count = count + 1;
  }

  for (i = 2; i >= 0; i = i - 1) {
    print_i32(points[i].x);
    print_nl();
    print_i32(points[i].y);
    print_nl();
  }

  return 0;
}
