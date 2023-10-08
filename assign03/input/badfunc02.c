// it shouldn't be allowed to redeclare a function
// as a different type of function

int foo(int x);
char foo(int x);

int main(void) {
  return foo(42);
}
