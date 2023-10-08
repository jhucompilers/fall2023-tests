struct Point {
  int x;
  int y;
};

int sq_dist(struct Point *p1, struct Point *p2) {
  int xdiff, ydiff;
  xdiff = p1->x - p2->x;
  ydiff = p1->y - p2->y;
  return xdiff*xdiff + ydiff*ydiff;
}

int main(void) {
  struct Point a, b;
  a.x = 2;
  a.y = 3;
  b.x = 4;
  b.y = 6;
  int result;
  result = sq_dist(&a, &b);
  return result;
}
