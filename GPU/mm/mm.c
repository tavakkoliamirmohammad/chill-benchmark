#define N 3968

void normalMM(double c[N][N], double a[N][N], double b[N][N]) {
  int i, j, k;

  for (i = 0; i < N; i++)
    for (j = 0; j < N; j++)
      for (k = 0; k < N; k++)
        c[j][i] = c[j][i] + a[k][i] * b[j][k];
}

