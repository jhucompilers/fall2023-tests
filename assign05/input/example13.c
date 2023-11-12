struct Point {
  int x, y;
};

int main(void) {
  struct Point p, *q;

  q = &p;

  q->x = 2;
  q->y = 3;

  return q->x + q->y;
}
