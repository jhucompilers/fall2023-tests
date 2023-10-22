struct Point {
  int x, y;
};

int main(void) {
  struct Point p;

  p.x = 2;
  p.y = 3;

  return p.x + p.y;
}
