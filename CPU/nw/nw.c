#define N 1024

void nw(double A[N][N]) {
    int i,j,k;
    for (j = 0; j<N; ++j)
            for (i = 0; i<N; ++i)
                A[j][i] = A[j-1][i] + A[j][i-1] + A[j-1][i-1];
}