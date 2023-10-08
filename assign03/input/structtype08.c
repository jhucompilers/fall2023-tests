struct Node {
  int data;
  struct Node *next;
};

int main(void) {
  struct Node n1, n2, n3;

  n1.data = 1;
  n1.next = &n2;

  n2.data = 2;
  n2.next = &n3;

  n3.data = 3;
  n3.next = &n1;

  return 0;
}
