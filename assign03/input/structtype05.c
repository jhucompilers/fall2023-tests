void strcpy(char *dst, const char *src);

struct Item {
  char name[32];
  int price;
  int quantity;
};

int main(void) {
  struct Item item;

  strcpy(&item.name[0], "apples");
  item.price = 120;
  item.quantity = 10;

  return 0;
}
