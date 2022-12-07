void nw(int **A, int **B, int **C, int n) {
    int i,j,k;
    for (j = 0; j<n; ++j)
            for (i = 0; i<n; ++i)
                A[j][i] = A[j-1][i] + A[j][i-1] + A[j-1][i-1];
}
