struct Point {
  int x, y;
};


int f(int x, int y) {
  int result;
  result = 1;

  struct Point p;
  p.x = x;
  p.y = y;
  if (p.x > 4 && p.x < 10) {
    if (p.y > 0 && p.y < 99) {
      result = p; // error
    }
  }

  return result;
}
