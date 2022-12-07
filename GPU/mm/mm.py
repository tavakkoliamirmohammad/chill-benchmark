N=3968

read_IR("normalMM")
Ti=64
Tj=64
Tk=16
STRIDED = 0
tile_by_index(["i","j"],[Ti,Tj],{'l1_control':"ii",'l2_control':"jj"},["ii","jj","i","j"], None)
tile_by_index(["k"],[Tk],{'l1_control':"kk"},["ii","jj","kk","i","j", "k"], STRIDED)
tile_by_index(["i"],[Tk],{'l1_control':"t", "l1_tile": "tt"},["ii","jj","kk", "tt", "t","j", "k"], None)
tile_by_index(["j"],[Tk],{'l1_control':"s", "l1_tile": "ss"},["ii","jj","kk", "tt", "t","ss", "s", "k"], None)
cudaize(0, "kernel_gpu", {'a':N**2,'b':N**2,'c':N**2}, ['ii', "jj"], ["tt", "ss"], [])
copy_to_shared("tx", "b", -16)
copy_to_shared("tx", "a", -16)
copy_to_registers("kk", "c")