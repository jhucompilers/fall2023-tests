// it should not be allowed to declare a function
// with the same name as a variable in the same
// scope

int x;

int x(int y);

int main(void) {
  return 0;
}
