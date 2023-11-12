// This program multiplies 500x500 square matrices,
// represented as 500x500 2D arrays

long read_i64(void);
void print_i64(long n);
void print_nl(void);

void read_m500x500(long *arr) {
  int i;
  for (i = 0; i < 250000; i = i + 1) {
    arr[i] = read_i64();
  }
}

int main(void) {
  long a[500][500], b[500][500], c[500][500];
  int M;
  int i, j,  k;
  long r, val;

  M = 500;

  // read input matrices
  read_m500x500(&a[0][0]);
  read_m500x500(&b[0][0]);

  // initialize result matrix to all 0s
  for (i = 0; i < M; i = i + 1) {
    for (j = 0; j < M; j = j + 1) {
      c[i][j] = 0L;
    }
  }

  // do the matrix multiplication: note that the
  // loops are structured to avoid iterating over a column
  // of elements and incurring excessive cache misses
  // as a result
  for (k = 0; k < M; k = k + 1) {
    for (i = 0; i < M; i = i + 1) {
      r = a[i][k];
      for (j = 0; j < M; j = j + 1) {
        val = c[i][j];
        val = val + (r * b[k][j]);
        c[i][j] = val;
      }
    }
  }

  // print the elements of the product matrix
  for (i = 0; i < M; i = i + 1) {
    for (j = 0; j < M; j = j + 1) {
      print_i64(c[i][j]);
      print_nl();
    }
  }

  return 0;
}
