N=1024
read_IR("normalMM")
Ti=64
Tj=16
Tk=16
STRIDED = 0
tile_by_index(["i","j"],[Ti,Tj],{'l1_control':"ii",'l2_control':"jj"},["ii","jj","i","j"], None)
tile_by_index(["k"],[Tk],{'l1_control':"kk"},["ii","jj","kk","i","j", "k"], STRIDED)
tile_by_index(["i"],[Tj],{'l1_control':"tt", "l1_tile": "t"},["ii","jj","kk", "t", "tt","j", "k"], None)
cudaize(0, "kernel_gpu", {'a':N*N,'b':N*N,'c':N*N}, ['ii', 'jj'], ['t', "tt"], [])
copy_to_shared("tx", "b", -16)
copy_to_registers("kk", "c")
unroll_to_depth(2)