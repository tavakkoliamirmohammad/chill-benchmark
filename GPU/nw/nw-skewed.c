#define N 1024

void nw(int **A, int **B, int **C) {
  int i;
  int j;
  for (j = 0; j <= 2046; j += 1) 
    for (i = (j - 1023 > 0 ? j - 1023 : 0); i <= (j < 1023 ? j : 1023); i += 1) 
      A[j - i][i] = A[j - i - 1][i] + A[j - i][i - 1] + A[j - i - 1][i - 1];
}
