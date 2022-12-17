// this source is derived from CHILL AST originally from file 'GPU/mm/mm.c' as parsed by frontend compiler rose

__global__ void kernel_gpu(double *c[3968], double *b[3968], double *a[3968]) {
  __shared__ double _P2[64][17];
  __shared__ double _P1[16][65];
  double _P3[4][4];
  int k;
  int kk;
  int ty = threadIdx.y;
  int tx = threadIdx.x;
  int by = blockIdx.y;
  int bx = blockIdx.x;
  {
    {
      {
        {
          _P3[(64 * by + ty - (64 * by + ty)) / 16][(64 * bx + tx - (64 * bx + tx)) / 16] = c[64 * by + ty][64 * bx + tx];
          _P3[(64 * by + ty + 16 - (64 * by + ty)) / 16][(64 * bx + tx - (64 * bx + tx)) / 16] = c[64 * by + ty + 16][64 * bx + tx];
          _P3[(64 * by + ty + 32 - (64 * by + ty)) / 16][(64 * bx + tx - (64 * bx + tx)) / 16] = c[64 * by + ty + 32][64 * bx + tx];
          _P3[(64 * by + ty + 48 - (64 * by + ty)) / 16][(64 * bx + tx - (64 * bx + tx)) / 16] = c[64 * by + ty + 48][64 * bx + tx];
          _P3[(64 * by + ty - (64 * by + ty)) / 16][(64 * bx + tx + 16 - (64 * bx + tx)) / 16] = c[64 * by + ty][64 * bx + tx + 16];
          _P3[(64 * by + ty + 16 - (64 * by + ty)) / 16][(64 * bx + tx + 16 - (64 * bx + tx)) / 16] = c[64 * by + ty + 16][64 * bx + tx + 16];
          _P3[(64 * by + ty + 32 - (64 * by + ty)) / 16][(64 * bx + tx + 16 - (64 * bx + tx)) / 16] = c[64 * by + ty + 32][64 * bx + tx + 16];
          _P3[(64 * by + ty + 48 - (64 * by + ty)) / 16][(64 * bx + tx + 16 - (64 * bx + tx)) / 16] = c[64 * by + ty + 48][64 * bx + tx + 16];
          _P3[(64 * by + ty - (64 * by + ty)) / 16][(64 * bx + tx + 32 - (64 * bx + tx)) / 16] = c[64 * by + ty][64 * bx + tx + 32];
          _P3[(64 * by + ty + 16 - (64 * by + ty)) / 16][(64 * bx + tx + 32 - (64 * bx + tx)) / 16] = c[64 * by + ty + 16][64 * bx + tx + 32];
          _P3[(64 * by + ty + 32 - (64 * by + ty)) / 16][(64 * bx + tx + 32 - (64 * bx + tx)) / 16] = c[64 * by + ty + 32][64 * bx + tx + 32];
          _P3[(64 * by + ty + 48 - (64 * by + ty)) / 16][(64 * bx + tx + 32 - (64 * bx + tx)) / 16] = c[64 * by + ty + 48][64 * bx + tx + 32];
          _P3[(64 * by + ty - (64 * by + ty)) / 16][(64 * bx + tx + 48 - (64 * bx + tx)) / 16] = c[64 * by + ty][64 * bx + tx + 48];
          _P3[(64 * by + ty + 16 - (64 * by + ty)) / 16][(64 * bx + tx + 48 - (64 * bx + tx)) / 16] = c[64 * by + ty + 16][64 * bx + tx + 48];
          _P3[(64 * by + ty + 32 - (64 * by + ty)) / 16][(64 * bx + tx + 48 - (64 * bx + tx)) / 16] = c[64 * by + ty + 32][64 * bx + tx + 48];
          _P3[(64 * by + ty + 48 - (64 * by + ty)) / 16][(64 * bx + tx + 48 - (64 * bx + tx)) / 16] = c[64 * by + ty + 48][64 * bx + tx + 48];
        }
      }
      for (kk = 0; kk <= 3952; kk += 16) {
        {
          {
            _P1[tx + kk - kk][64 * by + ty - 64 * by] = b[64 * by + ty][tx + kk];
          }
        }
        __syncthreads();
        {
          {
            _P2[64 * bx + tx - 64 * bx][ty + kk - kk] = a[ty + kk][64 * bx + tx];
          }
        }
        __syncthreads();
        for (k = 0; k <= 15; k += 1) {
          {
            {
              _P3[(64 * by + ty - (64 * by + ty)) / 16][(64 * bx + tx - (64 * bx + tx)) / 16] = _P3[(64 * by + ty - (64 * by + ty)) / 16][(64 * bx + tx - (64 * bx + tx)) / 16] + _P2[64 * bx + tx - 64 * bx][k + kk - kk] * _P1[k + kk - kk][64 * by + ty - 64 * by];
              _P3[(64 * by + ty + 16 - (64 * by + ty)) / 16][(64 * bx + tx - (64 * bx + tx)) / 16] = _P3[(64 * by + ty + 16 - (64 * by + ty)) / 16][(64 * bx + tx - (64 * bx + tx)) / 16] + _P2[64 * bx + tx - 64 * bx][k + kk - kk] * _P1[k + kk - kk][64 * by + ty + 16 - 64 * by];
              _P3[(64 * by + ty + 32 - (64 * by + ty)) / 16][(64 * bx + tx - (64 * bx + tx)) / 16] = _P3[(64 * by + ty + 32 - (64 * by + ty)) / 16][(64 * bx + tx - (64 * bx + tx)) / 16] + _P2[64 * bx + tx - 64 * bx][k + kk - kk] * _P1[k + kk - kk][64 * by + ty + 32 - 64 * by];
              _P3[(64 * by + ty + 48 - (64 * by + ty)) / 16][(64 * bx + tx - (64 * bx + tx)) / 16] = _P3[(64 * by + ty + 48 - (64 * by + ty)) / 16][(64 * bx + tx - (64 * bx + tx)) / 16] + _P2[64 * bx + tx - 64 * bx][k + kk - kk] * _P1[k + kk - kk][64 * by + ty + 48 - 64 * by];
              _P3[(64 * by + ty - (64 * by + ty)) / 16][(64 * bx + tx + 16 - (64 * bx + tx)) / 16] = _P3[(64 * by + ty - (64 * by + ty)) / 16][(64 * bx + tx + 16 - (64 * bx + tx)) / 16] + _P2[64 * bx + tx + 16 - 64 * bx][k + kk - kk] * _P1[k + kk - kk][64 * by + ty - 64 * by];
              _P3[(64 * by + ty + 16 - (64 * by + ty)) / 16][(64 * bx + tx + 16 - (64 * bx + tx)) / 16] = _P3[(64 * by + ty + 16 - (64 * by + ty)) / 16][(64 * bx + tx + 16 - (64 * bx + tx)) / 16] + _P2[64 * bx + tx + 16 - 64 * bx][k + kk - kk] * _P1[k + kk - kk][64 * by + ty + 16 - 64 * by];
              _P3[(64 * by + ty + 32 - (64 * by + ty)) / 16][(64 * bx + tx + 16 - (64 * bx + tx)) / 16] = _P3[(64 * by + ty + 32 - (64 * by + ty)) / 16][(64 * bx + tx + 16 - (64 * bx + tx)) / 16] + _P2[64 * bx + tx + 16 - 64 * bx][k + kk - kk] * _P1[k + kk - kk][64 * by + ty + 32 - 64 * by];
              _P3[(64 * by + ty + 48 - (64 * by + ty)) / 16][(64 * bx + tx + 16 - (64 * bx + tx)) / 16] = _P3[(64 * by + ty + 48 - (64 * by + ty)) / 16][(64 * bx + tx + 16 - (64 * bx + tx)) / 16] + _P2[64 * bx + tx + 16 - 64 * bx][k + kk - kk] * _P1[k + kk - kk][64 * by + ty + 48 - 64 * by];
              _P3[(64 * by + ty - (64 * by + ty)) / 16][(64 * bx + tx + 32 - (64 * bx + tx)) / 16] = _P3[(64 * by + ty - (64 * by + ty)) / 16][(64 * bx + tx + 32 - (64 * bx + tx)) / 16] + _P2[64 * bx + tx + 32 - 64 * bx][k + kk - kk] * _P1[k + kk - kk][64 * by + ty - 64 * by];
              _P3[(64 * by + ty + 16 - (64 * by + ty)) / 16][(64 * bx + tx + 32 - (64 * bx + tx)) / 16] = _P3[(64 * by + ty + 16 - (64 * by + ty)) / 16][(64 * bx + tx + 32 - (64 * bx + tx)) / 16] + _P2[64 * bx + tx + 32 - 64 * bx][k + kk - kk] * _P1[k + kk - kk][64 * by + ty + 16 - 64 * by];
              _P3[(64 * by + ty + 32 - (64 * by + ty)) / 16][(64 * bx + tx + 32 - (64 * bx + tx)) / 16] = _P3[(64 * by + ty + 32 - (64 * by + ty)) / 16][(64 * bx + tx + 32 - (64 * bx + tx)) / 16] + _P2[64 * bx + tx + 32 - 64 * bx][k + kk - kk] * _P1[k + kk - kk][64 * by + ty + 32 - 64 * by];
              _P3[(64 * by + ty + 48 - (64 * by + ty)) / 16][(64 * bx + tx + 32 - (64 * bx + tx)) / 16] = _P3[(64 * by + ty + 48 - (64 * by + ty)) / 16][(64 * bx + tx + 32 - (64 * bx + tx)) / 16] + _P2[64 * bx + tx + 32 - 64 * bx][k + kk - kk] * _P1[k + kk - kk][64 * by + ty + 48 - 64 * by];
              _P3[(64 * by + ty - (64 * by + ty)) / 16][(64 * bx + tx + 48 - (64 * bx + tx)) / 16] = _P3[(64 * by + ty - (64 * by + ty)) / 16][(64 * bx + tx + 48 - (64 * bx + tx)) / 16] + _P2[64 * bx + tx + 48 - 64 * bx][k + kk - kk] * _P1[k + kk - kk][64 * by + ty - 64 * by];
              _P3[(64 * by + ty + 16 - (64 * by + ty)) / 16][(64 * bx + tx + 48 - (64 * bx + tx)) / 16] = _P3[(64 * by + ty + 16 - (64 * by + ty)) / 16][(64 * bx + tx + 48 - (64 * bx + tx)) / 16] + _P2[64 * bx + tx + 48 - 64 * bx][k + kk - kk] * _P1[k + kk - kk][64 * by + ty + 16 - 64 * by];
              _P3[(64 * by + ty + 32 - (64 * by + ty)) / 16][(64 * bx + tx + 48 - (64 * bx + tx)) / 16] = _P3[(64 * by + ty + 32 - (64 * by + ty)) / 16][(64 * bx + tx + 48 - (64 * bx + tx)) / 16] + _P2[64 * bx + tx + 48 - 64 * bx][k + kk - kk] * _P1[k + kk - kk][64 * by + ty + 32 - 64 * by];
              _P3[(64 * by + ty + 48 - (64 * by + ty)) / 16][(64 * bx + tx + 48 - (64 * bx + tx)) / 16] = _P3[(64 * by + ty + 48 - (64 * by + ty)) / 16][(64 * bx + tx + 48 - (64 * bx + tx)) / 16] + _P2[64 * bx + tx + 48 - 64 * bx][k + kk - kk] * _P1[k + kk - kk][64 * by + ty + 48 - 64 * by];
            }
          }
          __syncthreads();
        }
        __syncthreads();
      }
      {
        {
          c[64 * by + ty][64 * bx + tx] = _P3[(64 * by + ty - (64 * by + ty)) / 16][(64 * bx + tx - (64 * bx + tx)) / 16];
          c[64 * by + ty + 16][64 * bx + tx] = _P3[(64 * by + ty + 16 - (64 * by + ty)) / 16][(64 * bx + tx - (64 * bx + tx)) / 16];
          c[64 * by + ty + 32][64 * bx + tx] = _P3[(64 * by + ty + 32 - (64 * by + ty)) / 16][(64 * bx + tx - (64 * bx + tx)) / 16];
          c[64 * by + ty + 48][64 * bx + tx] = _P3[(64 * by + ty + 48 - (64 * by + ty)) / 16][(64 * bx + tx - (64 * bx + tx)) / 16];
          c[64 * by + ty][64 * bx + tx + 16] = _P3[(64 * by + ty - (64 * by + ty)) / 16][(64 * bx + tx + 16 - (64 * bx + tx)) / 16];
          c[64 * by + ty + 16][64 * bx + tx + 16] = _P3[(64 * by + ty + 16 - (64 * by + ty)) / 16][(64 * bx + tx + 16 - (64 * bx + tx)) / 16];
          c[64 * by + ty + 32][64 * bx + tx + 16] = _P3[(64 * by + ty + 32 - (64 * by + ty)) / 16][(64 * bx + tx + 16 - (64 * bx + tx)) / 16];
          c[64 * by + ty + 48][64 * bx + tx + 16] = _P3[(64 * by + ty + 48 - (64 * by + ty)) / 16][(64 * bx + tx + 16 - (64 * bx + tx)) / 16];
          c[64 * by + ty][64 * bx + tx + 32] = _P3[(64 * by + ty - (64 * by + ty)) / 16][(64 * bx + tx + 32 - (64 * bx + tx)) / 16];
          c[64 * by + ty + 16][64 * bx + tx + 32] = _P3[(64 * by + ty + 16 - (64 * by + ty)) / 16][(64 * bx + tx + 32 - (64 * bx + tx)) / 16];
          c[64 * by + ty + 32][64 * bx + tx + 32] = _P3[(64 * by + ty + 32 - (64 * by + ty)) / 16][(64 * bx + tx + 32 - (64 * bx + tx)) / 16];
          c[64 * by + ty + 48][64 * bx + tx + 32] = _P3[(64 * by + ty + 48 - (64 * by + ty)) / 16][(64 * bx + tx + 32 - (64 * bx + tx)) / 16];
          c[64 * by + ty][64 * bx + tx + 48] = _P3[(64 * by + ty - (64 * by + ty)) / 16][(64 * bx + tx + 48 - (64 * bx + tx)) / 16];
          c[64 * by + ty + 16][64 * bx + tx + 48] = _P3[(64 * by + ty + 16 - (64 * by + ty)) / 16][(64 * bx + tx + 48 - (64 * bx + tx)) / 16];
          c[64 * by + ty + 32][64 * bx + tx + 48] = _P3[(64 * by + ty + 32 - (64 * by + ty)) / 16][(64 * bx + tx + 48 - (64 * bx + tx)) / 16];
          c[64 * by + ty + 48][64 * bx + tx + 48] = _P3[(64 * by + ty + 48 - (64 * by + ty)) / 16][(64 * bx + tx + 48 - (64 * bx + tx)) / 16];
        }
      }
    }
  }
}
#define N 3968

void normalMM(double c[3968][3968], double a[3968][3968], double b[3968][3968]) {
  double * devRO1ptr;
  double * devRO0ptr;
  double * devRW3ptr;
  cudaMalloc((void **)&devRW3ptr, 15745024 * sizeof(double));
  cudaMemcpy(devRW3ptr, c, 15745024 * sizeof(double), cudaMemcpyHostToDevice);
  cudaMalloc((void **)&devRO0ptr, 15745024 * sizeof(double));
  cudaMemcpy(devRO0ptr, a, 15745024 * sizeof(double), cudaMemcpyHostToDevice);
  cudaMalloc((void **)&devRO1ptr, 15745024 * sizeof(double));
  cudaMemcpy(devRO1ptr, b, 15745024 * sizeof(double), cudaMemcpyHostToDevice);
  dim3 dimGrid0 = dim3(62, 62);
  dim3 dimBlock0 = dim3(16, 16);
  kernel_gpu<<<dimGrid0,dimBlock0>>>((double (*)[3968])devRW3ptr, (double (*)[3968])devRO0ptr, (double (*)[3968])devRO1ptr);
  cudaMemcpy(c, devRW3ptr, 15745024 * sizeof(double), cudaMemcpyDeviceToHost);
  cudaFree(devRW3ptr);
  cudaFree(devRO0ptr);
  cudaFree(devRO1ptr);
}
